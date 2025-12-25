@echo off
cd /d "%~dp0"
cd ..\SillyTavern

set NODE_ENV=production
call npm install --no-save --no-audit --no-fund --loglevel=error --no-progress --omit=dev
node server.js %*

if %errorlevel% neq 0 pause
endlocal