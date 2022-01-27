@pushd %~dp0
@echo off
echo.-------------------------------------------------------------
ECHO Welcome. This script will uninstall preinstalled Office 365 (EN, ES, FR)
echo.-------------------------------------------------------------
pause

echo OFF

NET SESSION >nul 2>&1

IF %ERRORLEVEL% EQU 0 (

   echo. Please wait. This will take a moment or two
   

) ELSE (

   echo.-------------------------------------------------------------

   echo ERROR: YOU ARE NOT RUNNING THIS WITH ADMINISTRATOR PRIVILEGES.

   echo. -------------------------------------------------------------

   echo. If you're seeing this, it means you don't have admin privileges!
  

   pause

   echo.

   echo. You will need to restart this program with Administrator privileges by right-clicking and select "Run As Administrator"

   pause 

    echo.

   echo Press any key to leave this program. Make sure to Run As Administrator next time!

   pause

   EXIT /B 1

)
CD /d C:\Windows\system32
"C:\Program Files\Common Files\Microsoft Shared\ClickToRun\OfficeClickToRun.exe" scenario=install scenariosubtype=ARP sourcetype=None productstoremove=O365HomePremRetail.16_en-us_x-none culture=en-us version.16=16.0 DisplayLevel=False

"C:\Program Files\Common Files\Microsoft Shared\ClickToRun\OfficeClickToRun.exe" scenario=install scenariosubtype=ARP sourcetype=None productstoremove=O365HomePremRetail.16_es-es_x-none culture=es-es version.16=16.0 DisplayLevel=False

"C:\Program Files\Common Files\Microsoft Shared\ClickToRun\OfficeClickToRun.exe" scenario=install scenariosubtype=ARP sourcetype=None productstoremove=O365HomePremRetail.16_fr-fr_x-none culture=fr-fr version.16=16.0 DisplayLevel=False
echo Uninstall complete
pause
exit