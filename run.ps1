#Requires -Version 5.1
param(
    [Parameter(Position = 0)]
    [string]$Matrix = "insert_verification.json",
    [Parameter(Position = 1)]
    [string]$ReportDir = "reports"
)

$ErrorActionPreference = "Stop"
$Root = $PSScriptRoot
$Tester = Join-Path $Root "db-compat-tester"
$Jar = Join-Path $Tester "target\db-compat-tester-1.0.0-jar-with-dependencies.jar"
$Classes = Join-Path $Tester "target\classes"
$Lib = Join-Path $Root "lib\jdbc\*"
$Src = Join-Path $Tester "src\main\java"

if (-not (Test-Path $Jar)) {
    Write-Error "找不到 fat jar: $Jar`n请先在该目录执行 mvn package，或使用已有 target 产物。"
}
if (-not (Test-Path (Join-Path $Root "config\db.properties"))) {
    Write-Error "找不到 config\db.properties`n请复制 config\db.properties.example 为 config\db.properties 并填写连接信息。"
}

Write-Host "编译 Java 源码..."
$javaFiles = Get-ChildItem -Path $Src -Filter "*.java" -Recurse | ForEach-Object { $_.FullName }
& javac -encoding UTF-8 -cp $Jar -d $Classes @javaFiles
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Set-Location $Root
Write-Host "运行矩阵: $Matrix"
& java @('-Dfile.encoding=UTF-8', '-cp', "$Classes;$Jar;$Lib", 'com.dbcompat.Main', $Matrix, $ReportDir)
exit $LASTEXITCODE
