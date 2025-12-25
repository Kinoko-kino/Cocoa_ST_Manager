@echo off

REM 打开 Chrome 应用模式
REM start "" chrome --app=http://localhost:8000 --window-size=1400,900
REM if %errorlevel% neq 0 (
    REM 如果失败，使用默认浏览器
    start http://localhost:8000
REM)
exit