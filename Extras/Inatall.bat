@echo off
Title DayZ Standalone Server Setup
Color 0a
@rem http://media.steampowered.com/installer/steamcmd.zip
SETLOCAL ENABLEDELAYEDEXPANSION

       :: DEFINE the following variables where applicable to your install

    SET STEAMLOGIN=STEAMNAME STEAMPASSWORT
    SET serverBRANCH=223350

    SET serverPath=PFAD\DES\HAUPTVERZEICHNISSES
        SET STEAMPATH=STEAM\PATH


:: _________________________________________________________

echo.
echo     You are about to update DayZ Standalone server
echo        Dir: %serverPath%
echo        Branch: %serverBRANCH%
echo.
echo     Key "ENTER" to proceed
pause
%STEAMPATH%\steamcmd.exe +login %STEAMLOGIN% +force_install_dir %serverPath% +"app_update %serverBRANCH%" validate +quit
echo .
echo     Your DayZ Standalone server is now up to date
echo     key "ENTER" to exit
pause
