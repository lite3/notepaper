@echo off
set PAUSE_ERRORS=1
call bat\CopyResourcesToOutput.bat
call bat\SetupSDK.bat %1
call bat\SetupApplication.bat

echo.
echo Starting AIR Debug Launcher...
echo.

adl "%APP_XML%" "%APP_DIR%"
if errorlevel 1 goto error
goto end

:error
pause

:end