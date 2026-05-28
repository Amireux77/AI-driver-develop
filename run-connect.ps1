#Requires -Version 5.1
$ErrorActionPreference = "Stop"
$Root = $PSScriptRoot
$Tester = Join-Path $Root "db-compat-tester"
$Jar = Join-Path $Tester "target\db-compat-tester-1.0.0-jar-with-dependencies.jar"
$Classes = Join-Path $Tester "target\classes"
$Lib = Join-Path $Root "lib\jdbc\*"
$Src = Join-Path $Tester "src\main\java"
$ReportDir = if ($args.Count -ge 1) { $args[0] } else { "reports" }

if (-not (Test-Path $Jar)) {
    Write-Error "找不到 fat jar: $Jar`n请先在 db-compat-tester 目录执行 mvn package。"
}
if (-not (Test-Path (Join-Path $Root "config\db.properties"))) {
    Write-Error "找不到 config\db.properties`n请复制 config\db.properties.example 并填写连接信息。"
}

Write-Host "编译 Java 源码..."
$javaFiles = Get-ChildItem -Path $Src -Filter "*.java" -Recurse | ForEach-Object { $_.FullName }
& javac -encoding UTF-8 -cp $Jar -d $Classes @javaFiles
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Set-Location $Root
Write-Host "探测四库连接，报告目录: $ReportDir"
Write-Host ""

& java @('-Dfile.encoding=UTF-8', '-cp', "$Classes;$Jar;$Lib", 'com.dbcompat.tools.ConnectivityProbe', $ReportDir)
exit $LASTEXITCODE
