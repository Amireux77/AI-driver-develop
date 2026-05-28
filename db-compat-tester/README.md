# DB Compatibility Tester

跨库数据类型行为对比测试框架。把一个 JSON 测试矩阵扔进来 , 自动在 MySQL / Oracle / PostgreSQL / XuguDB 四个数据库上执行 , 生成 Markdown 对比报告 , 用于支撑可行性分析文档的编写

> **推荐**：在项目根目录使用 `run.ps1`。配置、驱动、矩阵路径见 [根 README](../README.md)。

---

## 前提条件

| 依赖      | 要求                            |
| --------- | ------------------------------- |
| Java      | 11+                             |
| Maven     | 可选（仅重新打 fat jar 时需要） |
| 虚谷 JDBC | 放入项目根 `lib/jdbc/`          |

---

## 什么时候需要重新 package

| 操作                                               | 需要 `mvn package`？                                          |
| -------------------------------------------------- | ------------------------------------------------------------- |
| 新增 / 修改 `matrix/*.json`                        | ❌ 不需要（项目根 `matrix/` 运行时加载）                       |
| 修改 `config/db.properties`                        | ❌ 不需要（`run.ps1` 直接读取）                                |
| 修改 Java 源码                                     | ❌ 不需要（`run.ps1` 自动 javac）；仅 fat jar 缺失时需 package |
| 第一次使用 , `db-compat-tester/target/` 无 fat jar | ✅ 需要（见下文「打包 fat jar」）                              |

> **两条 classpath 路径**：日常 `run.ps1` 使用项目根 `lib/jdbc/*.jar`；`mvn package` 使用 `pom.xml` 中的 Maven 坐标（须先把虚谷 JAR 安装到本地 `~/.m2`）。二者互不替代。

---

## 测试矩阵格式

每个类型对应一个 JSON 文件 , 放在**项目根 `matrix/`** 下。支持 `//` 注释

```jsonc
[
  {
    "id":          "tc_declare_basic",     // 用例唯一 ID , 全文件不重复
    "category":    "类型声明",              // 报告按此字段分节
    "description": "基础建表：TIME 类型列", // 中文描述 , 进入报告表格
    "sql":         "CREATE TABLE _tc_t (val TIME); DROP TABLE _tc_t;",  // 四库通用 SQL
    "dbSql": {                             // 某库语法不同时填写 , 会覆盖 sql
      "oracle": "SELECT 'Oracle无TIME , 跳过' FROM DUAL",
      "pg":     "CREATE TABLE _tc_t (val TIME); DROP TABLE _tc_t;"
    },
    "teardown":    ["DROP TABLE _tc_t"],   // 建表用例必填；纯 SELECT 不需要
    "expected":    "SQL:1999 §6.1：...",   // 期望行为说明 , 引用 SQL 标准条款
    "expectError": false                   // true = 期望报错；false = 期望成功
  }
]
```

**字段规则**：
- `sql` 与 `dbSql` 不能同时为空
- `dbSql` 中某库有值时覆盖 `sql`；不填或为 null 则使用 `sql`
- `teardown` 在用例执行**前、后各运行一次**（**SQL 失败也会执行后清理**）, 失败自动忽略
- 含 `CREATE TABLE` 时须在 `teardown` 中写对应 `DROP TABLE`；若遗漏 , 加载矩阵时会**自动补全** DROP（`TeardownHelper`）
- 临时表名建议 `TC_` 前缀（Oracle 对 `_` 开头标识符可能报错）；`teardown` 负责清理

---

## 项目结构（与仓库根目录的关系）

```
<项目根>/                          ← run.ps1、config/、matrix/、lib/ 在此
├── config/
│   ├── db.properties.example
│   └── db.properties              # 勿提交 Git
├── lib/jdbc/
│   └── xugu-jdbc-*.jar            # 运行时驱动（文件名因版本而异）
├── matrix/
│   └── *.json
├── reports/                       # run.ps1 输出
├── run.ps1
└── db-compat-tester/              ← Maven 工程（仅此目录有 pom.xml）
    ├── pom.xml                    # 虚谷坐标见 <dependency> com.xugu:xugu-jdbc
    ├── target/
    │   ├── classes/               # run.ps1 中 javac 输出
    │   └── db-compat-tester-1.0.0-jar-with-dependencies.jar   # mvn package 产物
    └── src/main/java/com/dbcompat/
        ├── Main.java
        ├── config/AppConfig.java
        └── ...
```

- **配置 / 矩阵**：始终在**项目根** `config/`、`matrix/`（`AppConfig` 按此解析）。
- **fat jar 路径**：`db-compat-tester/target/<artifactId>-<version>-jar-with-dependencies.jar`，与 `pom.xml` 中 `<artifactId>`、`<version>` 一致（当前为 `db-compat-tester-1.0.0-jar-with-dependencies.jar`）。

---

## 注意事项

- 连接配置在项目根 `config/db.properties` , **不要提交 Git**
- Oracle 无原生 DATETIME 类型 , 相关用例已在矩阵中单独配置 `dbSql.oracle`

---

## Maven 与打包（完整流程）

> 若已有 `db-compat-tester/target/*-jar-with-dependencies.jar` , 且只用根目录 `run.ps1` 跑矩阵 , 可跳过本节。  
> 在 **IDE（Cursor / VS Code / IntelliJ）** 中编辑 Java 或希望 `pom.xml` 不报错时 , **必须走完步骤 0～5** , 其中 **步骤 5（Reload Maven）不可省略**。

### 流程总览

| 步骤  | 内容                                | 何时需要                                          |
| :---: | ----------------------------------- | ------------------------------------------------- |
|   0   | 安装 Maven                          | 本机首次                                          |
|   1   | 虚谷 JAR 放入 `lib/jdbc/`           | 每次换驱动                                        |
|   2   | `install:install-file` 装入 `~/.m2` | 每次换驱动或改 `pom.xml` 中虚谷 `<version>`       |
|   3   | `mvn package` 打 fat jar            | 首次使用 / 改依赖 / 改 `pom.xml`                  |
|   4   | 命令行验证依赖（可选）              | 怀疑安装失败时                                    |
|   5   | **IDE Reload Maven 项目**           | **每次完成步骤 2 或 3 后**（在 IDE 中开发时必做） |
|   6   | 项目根 `run.ps1` 跑矩阵             | 日常测试                                          |

---

### 步骤 0：安装 Maven（一次性）

从 [Maven 下载页](https://maven.apache.org/download.cgi) 获取 Binary zip , 解压到任意目录：

```powershell
$mvn = "<你的 Maven 安装目录>\bin\mvn.cmd"   # 例：D:\apache-maven-3.9.16\bin\mvn.cmd
& $mvn -v
```

输出含 `Apache Maven 3.x.x` 即可。可不配置系统 `PATH` , 下文均用 `$mvn` 调用。

---

### 步骤 1：虚谷 JAR 放入 `lib/jdbc/`（`run.ps1` 运行时）

将驱动 JAR 放到**项目根**（不是 `db-compat-tester/` 下）：

```
<项目根>/lib/jdbc/xugu-jdbc-<任意后缀>.jar
```

- **文件名不固定** , `run.ps1` 会加载该目录下全部 `*.jar`。
- 驱动类：`com.xugu.cloudjdbc.Driver`（见 `config/db.properties.example`）。

**本步可能遇到的问题**

| 现象                  | 原因与处理                                                            |
| --------------------- | --------------------------------------------------------------------- |
| `run.ps1` 连不上 Xugu | 未放 JAR 或路径不是**项目根** `lib/jdbc/`                             |
| 与步骤 2 混淆         | 仅放 JAR **不能**消除 IDE 里 `pom.xml` 红线 , 还须步骤 2 + **步骤 5** |

---

### 步骤 2：安装到本地 Maven 仓库（`mvn package` / IDE）

虚谷驱动不在 Maven 中央仓库。`install:install-file` 的坐标须与 `pom.xml` 中 `<dependency>` **完全一致**：

| 字段         | 取值（以 `pom.xml` 为准）                                           |
| ------------ | ------------------------------------------------------------------- |
| `groupId`    | `com.xugu`                                                          |
| `artifactId` | `xugu-jdbc`                                                         |
| `version`    | `pom.xml` 里的 `<version>`（当前 `12.3.8` , **与 JAR 文件名无关**） |

在**项目根目录**执行（**不要**指望 `cd db-compat-tester` 才能装；也**不要**在 `db-compat-tester` 里写 `lib\jdbc\...` 相对路径 , 会找不到文件）：

```powershell
$root = "<项目根>"   # 例：C:\Users\25970\Desktop\Program\AI-driver-develop
$mvn  = "<你的 Maven>\bin\mvn.cmd"

$jar = (Get-ChildItem "$root\lib\jdbc\xugu-jdbc*.jar" | Select-Object -First 1).FullName
if (-not $jar) { throw "未找到 $root\lib\jdbc\xugu-jdbc*.jar" }

Set-Location $root
& $mvn install:install-file `
  "-Dfile=$jar" `
  "-DgroupId=com.xugu" `
  "-DartifactId=xugu-jdbc" `
  "-Dversion=12.3.8" `
  "-Dpackaging=jar"
```

**成功标志**：日志中出现（注意中间是 `com\xugu\xugu-jdbc\12.3.8` , 不是 `com\xugu-jdbc\12`）：

```text
Installing ...\lib\jdbc\xugu-jdbc-....jar to ...\.m2\repository\com\xugu\xugu-jdbc\12.3.8\xugu-jdbc-12.3.8.jar
BUILD SUCCESS
```

日志里若仍打印 `Building db-compat-tester` , 是因为当前目录旁有 `pom.xml` 或 Maven 扫到了工程 , **只要安装路径正确即可**。

**本步可能遇到的问题**

| 现象                                     | 原因与处理                                                                                           |
| ---------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| `Unknown lifecycle phase ".xugu"`        | PowerShell 把 `-DgroupId=com.xugu` 拆成 `com` 与 `.xugu`。**每个 `-D` 参数必须用双引号**，见上文脚本 |
| 安装到 `com\xugu-jdbc\12\...` 等错误目录 | 同上 , 引号缺失；删除 `%USERPROFILE%\.m2\repository\com\xugu-jdbc` 等错误目录后 , 用带引号的命令重装 |
| `BUILD FAILURE` 且提示 lifecycle phase   | 检查是否漏写 `install:install-file` , 或 `-D` 未加引号                                               |
| 命令成功但 IDE 里 `pom.xml` 仍报依赖错   | **安装已成功 , 须执行步骤 5 Reload**；命令行可用步骤 4 验证                                          |

---

### 步骤 3：打包 fat jar

在 **`db-compat-tester/`** 目录执行：

```powershell
$mvn = "<你的 Maven>\bin\mvn.cmd"
Set-Location "<项目根>\db-compat-tester"
& $mvn package
```

成功产物（随 `pom.xml` 的 `artifactId`、`version` 命名 , 当前为）：

```text
db-compat-tester/target/db-compat-tester-1.0.0-jar-with-dependencies.jar
```

**本步可能遇到的问题**

| 现象                                      | 原因与处理                                            |
| ----------------------------------------- | ----------------------------------------------------- |
| 找不到 `com.xugu:xugu-jdbc`               | 未做步骤 2 , 或 `-Dversion` 与 `pom.xml` 不一致       |
| 在**项目根**执行 `mvn package` 报错无 pom | 应 `cd db-compat-tester` 再执行                       |
| `package` 成功但 IDE 仍报依赖错           | **须执行步骤 5 Reload**（改依赖或重装驱动后每次都要） |

换用新版本虚谷 JAR：**步骤 1** 替换 `lib/jdbc/` 文件 → 若改了 `pom.xml` 中 `<version>` 则重做 **步骤 2** → **步骤 3** → **步骤 5**。

---

### 步骤 4：命令行验证（可选）

用于区分「Maven 已能解析」与「仅 IDE 未刷新」：

```powershell
$mvn = "<你的 Maven>\bin\mvn.cmd"
Set-Location "<项目根>\db-compat-tester"
& $mvn dependency:resolve
```

`BUILD SUCCESS` 表示 `pom.xml` 依赖在命令行侧正常；若此时 IDE 仍红线 , **只做步骤 5 即可** , 不必重复 `install:install-file`。

---

### 步骤 5：IDE 重新加载 Maven 项目（必做）

`install:install-file` 或 `mvn package` **不会自动**更新 IDE 的依赖索引。  
典型现象：**终端已 `BUILD SUCCESS` , 本地 `.m2` 里也有 `xugu-jdbc-12.3.8.jar` , 但 `pom.xml` 中 `com.xugu:xugu-jdbc` 仍标红** — 这是正常现象 , 不是安装失败。

**请在每次完成步骤 2 或 步骤 3 之后执行一次 Reload：**

**Cursor / VS Code（Extension Pack for Java）**

1. `Ctrl+Shift+P` → **`Java: Clean Java Language Server Workspace`** → 选择 Reload  
2. 或 `Ctrl+Shift+P` → **`Maven: Update project`** / 依赖扩展提供的 **Reload Projects**  
3. 确认设置中 `maven.executable.path` 指向与命令行相同的 `mvn.cmd` , 本地仓库为默认 `C:\Users\<你>\.m2\repository`（除非你自定义过）

**IntelliJ IDEA**

1. 右侧 **Maven** 工具窗口 → 点击 **Reload All Maven Projects**（刷新图标）  
2. 仍异常时：`File` → `Invalidate Caches` → Restart  

Reload 后 `pom.xml` 中虚谷依赖应不再报错。若仍红 , 对照步骤 2 的成功路径与 `pom.xml` 中 `<version>` 是否一致。

---

### 步骤 6：运行测试

在**项目根**（与 `run.ps1` 同级）：

```powershell
.\run.ps1 insert_verification.json
```

报告输出到 `reports/`。此步骤依赖 **fat jar** + **项目根 `lib/jdbc/`** , 不依赖 IDE 是否已 Reload。
