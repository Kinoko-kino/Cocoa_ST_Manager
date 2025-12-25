@echo off
cd /d "%~dp0"
cd ..\SillyTavern

git --version > nul 2>&1
if %errorlevel% neq 0 (
    echo Git is not installed on this system.
    echo Install it from https://git-scm.com/downloads
    goto end
) else (
    if not exist .git (
        echo Not running from a Git repository. Reinstall using an officially supported method to get updates.
        echo See: https://docs.sillytavern.app/installation/windows/
        goto end
    )
echo Starting Git Pull...
call git pull --rebase --autostash
if %errorlevel% neq 0 (
	REM incase there is still something wrong
	echo [ERROR] Update failed.
        echo See the update FAQ at https://docs.sillytavern.app/installation/updating/
        goto end
	) else (
	echo [SUCCESS] Update Successful.
	)