@echo off
setlocal enabledelayedexpansion

:: Switch to script directory
cd /d "%~dp0"

:: Check for SillyTavern folder
if exist "..\SillyTavern" (
    pushd "..\SillyTavern"
) else (
    echo [ERROR] Could not find folder: ..\SillyTavern
    echo Please make sure this script is in the correct launcher folder.
    goto error_end
)

:: Check Git
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Git is not installed or not in PATH.
    echo Please install Git from https://git-scm.com/downloads
    goto error_end
)

:: Check .git folder
if not exist ".git" (
    echo [ERROR] Not a Git repository.
    echo Please reinstall using the official method.
    goto error_end
)

:: Run Git Pull
echo Starting Git Pull...
git pull --rebase --autostash
if %errorlevel% neq 0 (
    echo [ERROR] Update failed with error code: %errorlevel%
    goto error_end
)

echo.
echo [SUCCESS] Update Successful!
goto end

:error_end
echo.
echo [FAIL] The script encountered an error.

:end
echo.
echo Press any key to exit...
pause > nul
popd