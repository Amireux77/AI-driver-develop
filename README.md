# <数据库> 兼容性测试项目

面向 **<数据库>** 与 **Oracle / PostgreSQL / MySQL** 的兼容性测试：维护测试文档与脚本，用 Java 工具在四库上跑矩阵并生成对比报告。

**三条线**：`docs/` 定义测什么 → `matrix/` + `run.ps1` 做四库对比 → `scripts/` 在虚谷主测库执行单库用例（XGFit / 客户端）。

---

## 1. 目录树

```
AI-driver-develop/                   # 项目根（仓库根目录）
│
├── README.md                          # 本文件
├── CONTRIBUTING.md                    # 协作与扩展主题说明
├── .gitignore
│
├── run.ps1                            # 【主入口】四库跑 matrix，生成 reports/
├── run.bat                            # 调用 run-ps-utf8.ps1 → run.ps1（cmd/双击）
├── run-connect.ps1                    # 【预检】四库连通；控制台 + CONNECTIVITY 报告
├── run-connect.bat                    # 同上；双击后 pause
├── run-ps-utf8.ps1                    # bat 用：UTF-8 控制台包装（内部）
│
├── tools/
│   ├── new-sql-script.ps1             # 生成 scripts 下 SQL 骨架
│   └── new-sql-script.bat
│
├── config/
│   ├── db.properties.example          # 连接模板（可提交）
│   └── db.properties                  # 四库真实配置（勿提交）
│
├── matrix/                            # 四库对比矩阵（JSON）
│   ├── insert_verification.json
│   ├── update_verification.json
│   └── update_probe_extra.json
│
├── lib/jdbc/
│   └── xugu-jdbc-*.jar                # 虚谷驱动（必放，勿提交）
│
├── db-compat-tester/                  # Java / Maven 四库对比工具
│   ├── README.md
│   ├── pom.xml
│   ├── target/
│   │   └── db-compat-tester-1.0.0-jar-with-dependencies.jar
│   └── src/main/java/com/dbcompat/    # Main、DatabaseRunner、ReportGenerator 等
│
├── scripts/                           # 虚谷主测 SQL（XGFit / 客户端）
│   ├── INTERVAL_TYPE/                 # INTERVAL 类型 + 13 变体 + 各影响域（体量大）
│   │   ├── 01-TableField/ …           #   表字段、DML/DQL 等子目录
│   │   ├── 02-StoredPeodecure/ …
│   │   ├── 03-StorageFunction/ …
│   │   ├── 04-View.sql … 19-Expression.sql
│   │   └── 06-Index.sql 等            #   根目录另含 06～18、20 等域脚本
│   ├── INSERT_TYPE/
│   │   ├── implemented/               # 已实现需求基准 SQL（虚谷官方语法）
│   │   │   └── 01-Val.sql
│   │   └── gap/                       # 缺口 / GR 等价路径 SQL
│   └── UPDATE_TYPE/                   # 同上 implemented / gap（待补充）
│
├── reports/                           # run.ps1 / run-connect 输出（*.md，默认不提交）
│
├── docs/                              # 测试文档（见 docs/INDEX.md）
│   ├── INDEX.md
│   ├── framework/                     # 通用模板、Prompt（含工作流程）
│   ├── meta/                          # SQL_SCRIPT_STYLE.md、PROJECT_LAYOUT.md
│   ├── insert/                        # INSERT-01～04、Prompt
│   ├── update/                        # UPDATE-01～04
│   └── interval/                      # INTERVAL-01～05、Prompt
│
└── .cursor/skills/                    # <数据库> AI 技能集（xugudb-sql、xugudb-jdbc 等）
```

---

## 2. 各目录说明

### 2.1 根目录脚本

| 文件              | 作用                                                                                                                                                                                                                                             |
|-------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `run.ps1`         | **跑测试矩阵（主流程）**：用 `javac` 编译 `db-compat-tester` 源码 → 读 `config/db.properties` 连四库 → 按 `matrix/<文件名>.json` 逐条执行 SQL（含分库 `dbSql`）→ 在 `reports/` 生成四库对比 Markdown 报告。默认矩阵为 `insert_verification.json` |
| `run.bat`         | **与 `run.ps1` 相同**，供不习惯开 PowerShell 的场景：在 cmd 或资源管理器中双击运行，参数会原样传给 `run.ps1`（例如 `run.bat update_verification.json`）                                                                                          |
| `run-connect.ps1` | **连通性预检（非矩阵）**：验证四库 JDBC；控制台打印 `[OK]`/`[FAIL]`，同时生成 `reports/CONNECTIVITY_report_*.md`                                                                                                                                 |
| `run-connect.bat` | **与 `run-connect.ps1` 相同**；适合双击：结束后 `pause`，便于查看屏幕结果                                                                                                                                                                        |

#### 2.1.1 调用关系

```text
run.bat  ──内部──▶  powershell -File run.ps1 [参数…]
run.ps1  ──直接──▶  javac + java com.dbcompat.Main
run-connect.bat  ──内部──▶  powershell -File run-connect.ps1 [报告目录]
run-connect.ps1  ──▶  javac + java ConnectivityProbe（控制台 + reports/ 双写）
```

- **`run.bat` 不包含独立逻辑**，只是把你在 cmd 里输入的参数转给 `run.ps1`。
- **推荐日常用法**：在项目根打开 **PowerShell 终端**，执行 `.\run.ps1`（可指定矩阵文件名），便于看日志、传参数。

#### 2.1.2 如何使用（跑矩阵）

运行前请确认：`config/db.properties` 已配置、`lib/jdbc/` 下有虚谷 JAR、`db-compat-tester/target/*-jar-with-dependencies.jar` 存在（见 [db-compat-tester/README.md](db-compat-tester/README.md)）。

| 方式                   | 操作                                  | 适用场景                   | 说明                                                                                                |
|------------------------|---------------------------------------|----------------------------|-----------------------------------------------------------------------------------------------------|
| **PowerShell（推荐）** | 在项目根打开终端，执行下方命令        | 开发、CI、需要指定矩阵     | 输出留在窗口，便于排错                                                                              |
| **cmd + `run.bat`**    | `cd` 到项目根后 `run.bat 矩阵名.json` | 习惯 cmd、或写进其它批处理 | 内部会启动 PowerShell 调用 `run.ps1`                                                                |
| **双击 `run.bat`**     | 资源管理器中双击                      | 快速跑**默认矩阵**         | 等价于 `run.ps1 insert_verification.json`；窗口跑完可能自动关闭，看不到报错时可改用终端             |
| **双击 `run.ps1`**     | 一般不推荐                            | —                          | 受系统「执行策略」与文件关联影响，可能只打开编辑器而不执行；请改用终端 `.\run.ps1` 或双击 `run.bat` |

**PowerShell 示例（项目根目录）：**

```powershell
cd C:\Users\25970\Desktop\Program\AI-driver-develop   # 换成你的项目根

.\run.ps1                              # 默认 matrix/insert_verification.json
.\run.ps1 update_verification.json     # 指定 matrix/ 下的 JSON 文件名
.\run.ps1 time_type.json reports       # 第二参数可改报告目录（默认 reports）
```

**cmd 示例（内部仍调用 `run.ps1`）：**

```cmd
cd /d C:\Users\25970\Desktop\Program\AI-driver-develop
run.bat update_verification.json
```

跑完后在 `reports/` 查看生成的 `*_report_*.md`。

#### 2.1.3 如何使用（连通性预检）

| 方式                 | 操作                                                                                            |
|----------------------|-------------------------------------------------------------------------------------------------|
| **双击（推荐预检）** | 双击 `run-connect.bat`：屏幕显示各库 `[OK]`/`[FAIL]`，结束后按任意键关闭；报告仍写入 `reports/` |
| **PowerShell**       | `.\run-connect.ps1` 或 `.\run-connect.ps1 自定义报告目录`                                       |
| **cmd**              | `run-connect.bat`                                                                               |

不跑 `matrix/` 用例；适合改完 `config/db.properties` 后先测连接，再执行 `run.ps1`。

---

### 2.2 `config/` — 数据库连接

存放四库 JDBC 连接信息，供 `run.ps1` 与 Java 程序读取。

| 文件                    | 说明                                                   |
|-------------------------|--------------------------------------------------------|
| `db.properties.example` | 模板，含 MySQL / PostgreSQL / Oracle / <数据库> 占位项 |
| `db.properties`         | 真实 IP、用户名、密码；**勿提交 Git**                  |

首次使用：

```powershell
copy config\db.properties.example config\db.properties
# 用编辑器修改 config\db.properties
```

程序查找顺序：`config/db.properties` → 兼容旧路径 → classpath。

---

### 2.3 `matrix/` — 四库测试矩阵

每个 JSON 文件描述一组跨库用例：四库执行同一条或分库 SQL，输出 Markdown 对比报告。

| 要点 | 说明                                                                                        |
|------|---------------------------------------------------------------------------------------------|
| 格式 | JSON 数组，支持 `//` 注释                                                                   |
| 字段 | `id`、`category`、`description`、`sql`、`dbSql`（分库覆盖）、`teardown`（清理表）           |
| 表名 | 建议 `TC_*` 前缀，避免 Oracle 对 `_` 开头表名报错                                           |
| 清理 | 每条含 `CREATE TABLE` 的用例须在 `teardown` 写 `DROP TABLE`；执行前后各清一次，**失败也清** |
| 新增 | 在本目录新建 `xxx.json`，执行 `.\run.ps1 xxx.json`                                          |

JSON 字段细则见 [db-compat-tester/README.md](db-compat-tester/README.md#测试矩阵格式)。

当前矩阵：

| 文件                       | 用途                       |
|----------------------------|----------------------------|
| `insert_verification.json` | INSERT / UPSERT 族四库验证 |
| `update_verification.json` | UPDATE 族四库验证          |
| `update_probe_extra.json`  | UPDATE 补充探测            |

---

### 2.4 `lib/jdbc/` — JDBC 驱动

运行时 classpath 依赖目录。`run.ps1` 会自动加载 `lib\jdbc\*`。

| 驱动         | 是否必须放入 | 说明                                                                                       |
|--------------|:------------:|--------------------------------------------------------------------------------------------|
| **<数据库>** |    **是**    | 不在 Maven 中央仓库；示例名 `xugu-jdbc-12.3.8-....jar`，驱动类 `com.xugu.cloudjdbc.Driver` |
| MySQL        |      否      | 已打入 fat jar                                                                             |
| PostgreSQL   |      否      | 已打入 fat jar                                                                             |
| Oracle       |      否      | 已打入 fat jar                                                                             |

重新执行 `mvn package` 打包 fat jar 时，须将虚谷 JAR 安装到本地 Maven 仓库（见下文 **2.4.1** 与 [db-compat-tester/README.md](db-compat-tester/README.md)）。

#### 2.4.1 更换虚谷驱动后须修改什么

日常 `run.ps1` 与 Maven/IDE **各用一条路径**，换驱动时按实际用途对照下表（**完整命令与排错**见 [db-compat-tester/README.md](db-compat-tester/README.md) 步骤 1～5）。

| 须检查项             | 路径 / 位置                                                                | 说明                                                                                          |
|----------------------|----------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|
| 运行时 JAR           | `lib/jdbc/xugu-jdbc-*.jar`                                                 | **每次换驱动必换**；`run.ps1` 加载此目录下全部 `*.jar`，文件名可含版本后缀                    |
| Maven 坐标版本       | `db-compat-tester/pom.xml` → `com.xugu:xugu-jdbc` 的 `<version>`           | 与 `install:install-file` 的 `-Dversion` **一致**；**与 JAR 文件名无关**（当前示例 `12.3.8`） |
| 本地仓库安装         | `mvn install:install-file`                                                 | 换 JAR 或改了 `pom.xml` 的 `<version>` 后须重装到 `~/.m2`                                     |
| fat jar 产物         | `db-compat-tester/target/db-compat-tester-1.0.0-jar-with-dependencies.jar` | 改 `pom.xml` 依赖或重装驱动后执行 `mvn package` 重新打包                                      |
| IDE 索引             | Cursor / VS Code / IntelliJ **Reload Maven**                               | 步骤 2/3 成功后若 `pom.xml` 仍红，Reload 即可，不必重复安装                                   |
| 连接配置（一般不改） | `config/db.properties` → `xugu.driver`                                     | 驱动类仍为 `com.xugu.cloudjdbc.Driver` 时通常**无需**改；仅当厂商变更驱动类名时同步修改       |

**最小流程（仅换 JAR、不改 `pom.xml` 版本）**：替换 `lib/jdbc/` 下文件 → 直接 `run.ps1` 即可。  
**改 `pom.xml` 中 `<version>` 时**：替换 `lib/jdbc/` → `install:install-file`（`-Dversion` 与新版本一致）→ `mvn package` → IDE Reload。

---

### 2.5 `db-compat-tester/` — Java 对比工具

Maven 工程，核心能力：

1. 从 `matrix/` 加载 JSON 矩阵  
2. 按 `config/db.properties` 连接四库  
3. 逐条执行 SQL，收集成功/失败  
4. 在 `reports/` 生成 Markdown 对比报告  

| 路径                                                      | 说明                                      |
|-----------------------------------------------------------|-------------------------------------------|
| `target/*-jar-with-dependencies.jar`                      | 可执行 fat jar（含 MySQL/PG/Oracle 驱动） |
| `src/main/java/com/dbcompat/Main.java`                    | 命令行入口                                |
| `src/main/java/com/dbcompat/config/AppConfig.java`        | 解析项目根、`config/`、`matrix/`          |
| `src/main/java/com/dbcompat/tools/ConnectivityProbe.java` | 连通性探测                                |

修改 Java 源码后无需 Maven：`run.ps1` 会用 `javac` 编译到 `target/classes`。

---

### 2.6 `scripts/` — Xugu 主测脚本

存放面向 **<数据库> 主测库** 的可执行脚本（`.sql`、`.wiki` 等），与 `docs/` 中用例设计里的脚本路径对应。

| 子目录           | 状态   | 说明                                                                                   |
|------------------|--------|----------------------------------------------------------------------------------------|
| `INTERVAL_TYPE/` | 已有   | **类型测试**：13 种 INTERVAL 变体 + 索引/视图等**全部影响域**（体量大）                |
| `INSERT_TYPE/`   | 进行中 | **语句测试**：`implemented/` 基准 + `gap/` 缺口，分目录（见 `implemented/01-Val.sql`） |
| `UPDATE_TYPE/`   | 规划   | **语句测试**：只测 UPDATE 能力，组织方式同 INSERT                                      |

**与 `matrix/` 的区别**：`matrix/` 用于四库**对比**；`scripts/` 用于 Xugu **单库执行**（XGFit / 手工跑）。  
**勿混淆**：不要把 INTERVAL 的 13 变体 × 全域脚本写法套到 INSERT/UPDATE 上，详见 [SQL_SCRIPT_STYLE.md](docs/meta/SQL_SCRIPT_STYLE.md) §0。

#### 2.6.1 如何按文档编写新 SQL 脚本

1. 按主题阅读 `docs/<主题>/` 下 **可行性 → 需求 → 测试方案 → 用例设计**，从用例设计表取得 `XG-TYPE-<主题>-<域代码>-<序号>`。  
2. 阅读 **[docs/meta/SQL_SCRIPT_STYLE.md](docs/meta/SQL_SCRIPT_STYLE.md)**（§0 范围；§2.1 **implemented/gap** 双轨；§3～7 格式）。  
3. 阅读 **[docs/framework/00-通用模板-00-Prompt-SQL生成.md](docs/framework/00-通用模板-00-Prompt-SQL生成.md)**（须同时写基准与缺口；`implemented/` 对照 [虚谷官方文档](https://docs.xugudb.com/)）。  
4. 在项目根用脚手架生成骨架：

```powershell
.\tools\new-sql-script.ps1 `
  -Topic INSERT `
  -FileNum 01 `
  -FileSlug Val `
  -DomainCode VAL `
  -Seq 001 `
  -Title "单行 VALUES 全列插入" `
  -Scope implemented
```

| 参数                           | 说明                                                               |
|--------------------------------|--------------------------------------------------------------------|
| `Topic`                        | `INSERT` / `UPDATE` / `INTERVAL` → 输出到 `scripts/<Topic>_TYPE/`  |
| `FileNum` + `FileSlug`         | 文件名，如 `01` + `Val` → `01-Val.sql`                             |
| `DomainCode` + `Seq` + `Title` | 生成 `!4 XG-TYPE-INSERT-VAL-001 …`                                 |
| `-Scope implemented` / `gap`   | 落盘到 `implemented/`（基准）或 `gap/`（缺口）；默认 `implemented` |
| `-VariantCount 13`             | **仅 INTERVAL**；INSERT/UPDATE 勿用（工具会拒绝）                  |
| `-Append`                      | 向已有 `.sql` 追加下一条 `!4` 用例                                 |

也可使用：`tools\new-sql-script.bat INSERT 01 Val VAL 001 "单行 VALUES 全列插入"`（末尾加 `gap` 则落入 `gap/`）

---

### 2.7 `reports/` — 验证报告

`run.ps1`、`run-connect.ps1` 的输出目录。文件名形如：

- `INSERT VERIFICATION_report_20260526_1443.md`
- `CONNECTIVITY_report_20260526_1407.md`

默认不提交 Git（见 `.gitignore`）。历史报告列表见 [reports/INDEX.md](reports/INDEX.md)。

---

### 2.8 `docs/` — 测试文档

各主题的 feasibility / 需求 / 测试方案 / 用例设计等 Markdown 文档，按子目录组织。

→ 完整清单：[docs/INDEX.md](docs/INDEX.md)

---

## 3. 快速开始

**环境：** JDK 11+（`java -version`）

```powershell
# 1. 连接配置
copy config\db.properties.example config\db.properties
# 编辑四库地址与密码

# 2. 虚谷 JDBC 放入 lib\jdbc\

# 3. 运行矩阵
.\run.ps1 insert_verification.json

# 4. 查看 reports\ 下生成的 .md
```

---

## 4. 使用方式

本项目分三条线协作：**文档** (`docs/`) 定义测什么 , **矩阵** (`matrix/`) + **`run.ps1`** 做四库对比 , **`scripts/`** 在虚谷单库执行全量用例。多数 Markdown / SQL **不会自动运行** ; 需要人在终端执行 `run.ps1` , 或在 Cursor **Agent 模式**下让 AI 代跑。

### 4.0 具体操作流程

> 在 docs/framework/ 目录下复制对应需要生成文档的通用 Prompt 文档,修改具体要测试的内容,将修改好的 Prompt 发送给 AI 让 AI 进行生成

### 4.1 运行前准备（人工一次性）

| 项       | 路径                                                  | 说明                                                       |
|----------|-------------------------------------------------------|------------------------------------------------------------|
| 连接配置 | `config/db.properties`                                | 从 `config/db.properties.example` 复制并填写四库地址与密码 |
| 虚谷驱动 | `lib/jdbc/xugu-jdbc-*.jar`                            | 必放 , `run.ps1` 会加入 classpath                          |
| Fat JAR  | `db-compat-tester/target/*-jar-with-dependencies.jar` | 若无 , 在 `db-compat-tester/` 执行 `mvn package`           |
| JDK      | 11+                                                   | `java -version` 确认                                       |

环境就绪后 , 可在本机终端执行 `.\run-connect.ps1` 与 `.\run.ps1 <矩阵名>.json` , 也可将下文提示词粘贴到 Cursor AI 输入框 , 由 AI 读取配置与矩阵并代跑。

### 4.2 哪些需要执行、哪些只读

| 类型              | 示例                                     |     是否“运行”     | 谁执行                                     |
|-------------------|------------------------------------------|:------------------:|--------------------------------------------|
| 入口脚本          | `run.ps1` , `run-connect.ps1`            |         是         | 你或 AI（终端）                            |
| 配置 / 矩阵       | `config/db.properties` , `matrix/*.json` | 否（被 Java 读取） | `run.ps1` → `Main.java`                    |
| 测试文档 / Prompt | `docs/` , `docs/framework/*-Prompt*`     |         否         | 人 + AI 编辑                               |
| 虚谷脚本          | `scripts/**/*.sql`                       |     在库上执行     | 你 / XGFit / 客户端（AI 通常无法连内网库） |

**调用链** : `run.ps1` → `javac` 编译 → `com.dbcompat.Main` → 读 `config/` + `matrix/` → 连四库 → 写 `reports/*.md`。

### 4.3 向 AI 描述时的通用要求

粘贴提示词时建议附带 :

1. **允许使用终端** , 要求实际执行 , 不要只列命令  
2. **项目根目录** 为本仓库路径  
3. 说明 **`config/db.properties` 与 `lib/jdbc/` 是否已就绪**（未就绪则只检查、不跑矩阵）  
4. 使用 Cursor **Agent 模式**（非仅 Ask 模式）

---

### 4.4 可复制：万能开场（检查环境 + 跑通流程）

```text
请在本仓库完整跑通四库兼容性测试流程（不要只讲步骤，要实际执行）：

1. 先读 README.md、docs/meta/PROJECT_LAYOUT.md、db-compat-tester/README.md
2. 检查并说明：config/db.properties、lib/jdbc/*.jar、db-compat-tester/target/*-jar-with-dependencies.jar 是否存在
3. 缺什么就告诉我缺什么；能补的检查项你自己用终端处理（例如 mvn package）
4. 允许你使用终端执行 run-connect.ps1 和 run.ps1
5. 工作目录：本项目根目录
6. 跑完后总结 reports/ 下最新报告，并说明矩阵用例在四库上的成败
```

---

### 4.5 可复制：四库连通性探测

```text
请读取 README.md 和 config/db.properties.example，检查 config/db.properties 与 lib/jdbc/ 是否就绪。
然后在项目根执行 .\run-connect.ps1，把 ConnectivityProbe 的输出和 reports/ 里最新 CONNECTIVITY 报告总结给我。
若失败，根据 AppConfig.java 和 db-compat-tester 源码判断是配置问题还是网络/驱动问题。
```

---

### 4.6 可复制：跑 INSERT 矩阵（最常用）

```text
请按项目标准流程执行四库对比：
- 矩阵文件：matrix/insert_verification.json
- 先读 matrix/insert_verification.json 和 db-compat-tester/README.md 了解用例结构
- 再读 config/db.properties（若存在）确认四库连接
- 在项目根执行：.\run.ps1 insert_verification.json
- 跑完后打开 reports/ 最新 INSERT VERIFICATION_report_*.md，用表格总结 mysql/pg/oracle/xugu 成功失败数
```

配置与虚谷 jar 已就绪时 , 可用最短版 :

```text
请在项目根自动检查环境后执行 run-connect.ps1，再执行 run.ps1 insert_verification.json。
读取 matrix/insert_verification.json 和 reports 最新报告，用中文总结四库对比结果。
允许使用终端，不要只给步骤。config/db.properties 和 lib/jdbc/ 已就绪。
```

---

### 4.7 可复制：跑其他矩阵

```text
请执行 .\run.ps1 time_type.json，并解读 reports/ 下最新报告。
执行前检查 config 与 lib/jdbc，缺 jar 则先 mvn package。
```

将 `time_type.json` 换成 `matrix/` 下任意 JSON 文件名即可。

---

### 4.8 可复制：文档 + 矩阵对照（参考 INSERT 全流程）

```text
我要走完整测试流程，主题参考 INSERT：
1. 读 docs/INDEX.md、docs/insert/INSERT-04-用例设计.md，了解用例与矩阵关系
2. 读 matrix/insert_verification.json，对照 INSERT-04 里 P0 用例是否覆盖
3. 执行 .\run-connect.ps1，再执行 .\run.ps1 insert_verification.json
4. 把 reports 结果与 INSERT-04 中用例编号（如 XG-TYPE-INSERT-VAL-001）对应说明
5. 不要改 docs，除非我发现矩阵与文档不一致再向我确认后修改
```

---

### 4.9 可复制：新建主题（如 SELECT）并跑矩阵

```text
参考 docs/insert/ 与 docs/framework/00-通用模板-00-Prompt-01～04：
1. 在 docs/ 下新建 select/ 并生成 SELECT-01～04 骨架（或我指定只要矩阵）
2. 在 matrix/ 新建 select_verification.json，至少 3 条 P0 SELECT 用例
3. 先执行 .\run-connect.ps1，再执行 .\run.ps1 select_verification.json
4. 更新 docs/INDEX.md 登记 SELECT 主题
每步做完简短汇报；执行矩阵前必须先确认 config 与 lib/jdbc 就绪。
```

写文档阶段可单独使用 Prompt , 例如 :

```text
请读 docs/framework/00-通用模板-00-Prompt-01-可行性分析.md，
将 {主题} 替换为 SELECT，参考 docs/framework/00-通用模板-01-可行性分析.md 骨架，
生成 docs/select/SELECT-01-可行性分析.md。可查 .cursor/skills/xugudb-sql/。
```

---

### 4.10 AI 建议自动读取的文件（可写进提示）

| 顺序 | 文件                                                     | 目的                          |
|:----:|----------------------------------------------------------|-------------------------------|
|  1   | `README.md`                                              | 目录与命令                    |
|  2   | `config/db.properties`                                   | 四库连接（无则读 `.example`） |
|  3   | `lib/jdbc/`                                              | 虚谷驱动                      |
|  4   | `db-compat-tester/target/*-jar-with-dependencies.jar`    | 是否可运行                    |
|  5   | `matrix/<矩阵名>.json`                                   | 用例与 SQL                    |
|  6   | [db-compat-tester/README.md](db-compat-tester/README.md) | JSON 字段说明                 |
|  7   | `run.ps1` / `run-connect.ps1`                            | 执行入口                      |
|  8   | `reports/*.md`                                           | 跑完后解读结果                |

写新主题文档时再读 `docs/framework/*-Prompt*` 与 [docs/INDEX.md](docs/INDEX.md) ; 查虚谷语法可用 `.cursor/skills/xugudb-*`。

### 4.11 AI 不会自动做的事（需在提示中单独说明）

| 需求                         | 提示中应写明                                       |
|------------------------------|----------------------------------------------------|
| 在虚谷执行 `scripts/` 下 SQL | 「我无法连库 , 只检查/生成 SQL」或自行在客户端执行 |
| 修改连接密码                 | 「不要改 db.properties」                           |
| 提交 Git                     | 「不要 commit / push」                             |
| 连续跑多个矩阵               | 「依次执行 run.ps1 a.json 和 b.json」              |

---

## 5. 扩展新项目主题

1. 在 `docs/` 新建子目录，从 `docs/framework/` 复制模板,依据实际要测试的内容修改,并存放到对应目录下,修改为对应的文件名  
2. 在 `scripts/` 新建 `{主题}_TYPE/`  
3. 在 `matrix/` 新建 JSON，用 `run.ps1` 做四库抽样验证  
4. 更新 [docs/INDEX.md](docs/INDEX.md)  

---

## 6. 安全与 Git

- 勿提交：`config/db.properties`、`lib/jdbc/*.jar`  
- 路径迁移说明：[docs/meta/PROJECT_LAYOUT.md](docs/meta/PROJECT_LAYOUT.md)
