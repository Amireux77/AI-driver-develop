@echo off
setlocal EnableExtensions
cd /d "%~dp0\.."
if "%~5"=="" (
    echo 用法: tools\new-sql-script.bat ^<Topic^> ^<FileNum^> ^<FileSlug^> ^<DomainCode^> ^<Seq^> ^<Title^> [VariantCount] [implemented^|gap]
    echo 示例: tools\new-sql-script.bat INSERT 01 Val VAL 001 "单行 VALUES 全列插入"
    echo 缺口: tools\new-sql-script.bat INSERT 05 Ups UPS 001 "MERGE 等价" 0 gap
    exit /b 1
)
set "VC=%~7"
if "%VC%"=="" (set "VC=0")
set "SCOPE=%~8"
if "%SCOPE%"=="" (set "SCOPE=implemented")
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0new-sql-script.ps1" -Topic "%~1" -FileNum "%~2" -FileSlug "%~3" -DomainCode "%~4" -Seq "%~5" -Title "%~6" -VariantCount %VC% -Scope %SCOPE%
exit /b %ERRORLEVEL%
