@echo off
setlocal EnableExtensions
cd /d "%~dp0"

REM 保存当前代码页与 JAVA_TOOL_OPTIONS，临时 UTF-8；pause 结束后恢复
for /f "tokens=2 delims=:" %%I in ('chcp') do set "_DBCOMPAT_CP=%%I"
set "_DBCOMPAT_CP=%_DBCOMPAT_CP: =%"
chcp 65001 >nul 2>&1

echo.
echo ========================================
echo   四库连通性探测 ( MySQL / PG / Oracle / Xugu )
echo ========================================
echo   屏幕输出下方 [OK]/[FAIL] 行；报告同时写入 reports\
echo.

powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0run-ps-utf8.ps1" "%~dp0run-connect.ps1" %*
set "EXITCODE=%ERRORLEVEL%"

echo.
if %EXITCODE% neq 0 (
    echo [失败] 探测未全部成功，退出码: %EXITCODE%
) else (
    echo [完成] 详见上方 [OK]/[FAIL] 及 reports\CONNECTIVITY_report_*.md
)
echo.
pause

if defined _DBCOMPAT_CP chcp %_DBCOMPAT_CP% >nul 2>&1
exit /b %EXITCODE%
