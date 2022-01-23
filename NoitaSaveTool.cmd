echo off
mode con:cols=80 lines=50
setlocal EnableDelayedExpansion
setlocal enableextensions
set title=                º  Noita Tool by HootzMcToke Version 3    º
set LAST=                º      Build time %~t0     º
title %title%
SET BOXTOP=		ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
SET SELECT=		º         Select an option below          º
SET BOXMID=		ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹
SET LM=^
		º             5. Main Menu                º                       ^
		º             6. Play game                º                       ^
		º             7. Quit                     º                       ^
		ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼                                
set MM=^
                º             1. Backup a save            º                     ^
                º             2. Restore a save           º                     ^
                º             3. Tools                    º                     ^
                º             4. Custom Seed Start        º
set BKM=^
                º             1. Backup to Slot 1         º                     ^
                º             2. Backup to Slot 2         º                     ^
                º             3. Backup to Slot 3         º
set RESTM=^
                º             1. Restore From Slot 1      º                     ^
                º             2. Restore From Slot 2      º                     ^
                º             3. Restore From Slot 3      º
set DELM=^
                º             1. Delete Save 001          º                     ^
                º             2. Delete Save 002          º                     ^
                º             3. Delete Save 003          º                     ^
                º             4. Delete All Backups       º                     
set TOOLS=^
                º             1. Delete Saves             º                     ^
                º             2. Settings                 º                     ^
                º             3. Open Tool Location       º
set CS=^
                º             1. Enter Seed               º                     ^
                º             2. Play Game (No Change)    º                     ^
                º             3. Main Menu                º                     ^
                º             4. Quit                     º                     ^
		        ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼			
SET SAVLOC=                º             4. Open Save Location       º
set logo=^

 [31m    °²     ²²°            [33m                [31m       [33m               [31m               ^
 [31m   ²²²²²²  ²²²²²²         [33m                [31m       [33m               [31m               ^
 [31m ²²²²²²²²²²²²²²²²²²       [33m                [31m  ²²²² [33m      ²²²      [31m               ^
 [31m ²²²²²²²²²²  ²²²²²²²²     [33m                [31m ²²²²² [33m    ²²²²²      [31m               ^
 [31m ²²²²²²²²      ²²²²²²²²   [33m                [31m   ²²²²[33m   ²²²²²²      [31m               ^
 [31m ²²²²²²²²        ²²²²²²²²²[33m                [31m    ²[33m     ²²²²²²      [31m               ^
 [31m ²²²²²²²²         ²²²²²²²°[33m                [31m    ° [33m²²²²²²²²²²²²²²²²±[31m              ^
 [31m ²²²²²²²²        ²²²²²²²² [33m         ²      [31m   ²  [33m²²²²²²²²²²²²²²² [31m      ²        ^
 [31m ²²²²²²²²        ²²²²²²²² [33m     ²²²²²²     [31m ²²²²  [33m   ²²²²²²  [31m       ²²²²²²²     ^
 [31m ²²²²²²²²        ²²²²²²²² [33m²²²²²²²²²²²²²   [31m²²²²²²²[33m   ²²²²²²  [31m     ²²²²²²²²²²²²  ^
 [31m ²²²²²²²²        ²²²²²²²² [33m²²²²²² ²²²²²²²² [31m ²²²²²²[33m   ²²²²²²  [31m   ²²²²  ²²²²²²²²  ^
 [31m ²²²²²²²²        ²²²²²²²² [33m²²²²²²   ²²²²²² [31m ²²²²²²[33m   ²²²²²²  [31m  ²²²²    ²²²²²²²  ^
 [31m ²²²²²²²²        ²²²²²²²² [33m²²²²²²    ²²²²²²[31m ²²²²²²[33m   ²²²²²²  [31m ²²²²     ²²²²²²²  ^
 [31m ²²²²²²²²        ²²²²²²²² [33m²²²²²²    ²²²²²²[31m ²²²²²²[33m   ²²²²²²  [31m²²²²²     ²²²²²²²  ^
 [31m ²²²²²²²²        ²²²²²²²² [33m²²²²²²    ²²²²²²[31m ²²²²²²[33m   ²²²²²²  [31m²²²²²     ²²²²²²²  ^
 [31m ²²²²²²²²        ²²²²²²²² [33m²²²²²²     ²²²²²[31m ²²²²²²[33m   ²²²²²²  [31m²²²²²²    ²²²²²²²  ^
 [31m ²²²²²²²²        ²²²²²²²² [33m²²²²²²     ²²²² [31m ²²²²²²[33m   ²²²²²²  [31m²²²²²²²   ²²²²²²²  ^
 [31m ²²²²²²²²        ²²²²²²²² [33m²²²²²²²²  ²²²²² [31m ²²²²²²[33m   ²²²²²²  [31m ²²²²²²  ²²²²²²²²  ^
 [31m ²²²²²²²²        ²²²²²²²² [33m°²²²²²²²²²²²±   [31m ²²²²²²[33m   ²²²²²²  [31m  ²²²²²²²²²²²²²²²  ^
 [31m ²²²²²²²²        ²²²²²²²² [33m   ²²²²²²²²     [31m²²²²²²²[33m  ²²²²²²²  [31m    ²²²²² ²²²²²²²  ^
 [31m ²²²²²²²²²²      ²²²²²²²² [33m       ²²       [31m²²²²²²²²[33m ²²²²²²²² [31m     ²     ²²²²²²  ^
 [31m               ²²²²²²     [33m                [31m       [33m            [31m					 ^

[43mÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ[0m						 ^																
:MAINMENU
cls
ECHO !logo!
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !MM!
ECHO !LM!
choice /n /c:1234567 >nul
if errorlevel ==7 goto close
if errorlevel ==6 goto playnoita
if errorlevel ==5 goto MAINMENU
if errorlevel ==4 goto SEEDSTART
if errorlevel ==3 goto TOOLS
if errorlevel ==2 goto REST
if errorlevel ==1 goto BACKUP
goto MAINMENU
:BACKUP
cls
ECHO !logo!
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !BKM!
ECHO !SAVLOC!
ECHO !LM!
CHOICE /N /C:1234567 >NUL
if errorlevel ==7 goto close
if errorlevel ==6 goto playnoita
if errorlevel ==5 goto MAINMENU
IF ERRORLEVEL ==4 GOTO opensave
IF ERRORLEVEL ==3 GOTO B003
IF ERRORLEVEL ==2 GOTO B002
IF ERRORLEVEL ==1 GOTO B001
GOTO BACKUP
:B001
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A" /e /xd "stats" "persistent" >NUL
ECHO Backup Complete - Located in Folder save00A
pause
GOTO BACKUP
:B002
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B" /e /xd "stats" "persistent" >NUL
ECHO Backup Complete - Located in Folder save00B
pause
GOTO BACKUP
:B003
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C" /e /xd "stats" "persistent" >NUL
ECHO Backup Complete - Located in Folder save00C
pause
GOTO BACKUP
:BALL
cls
echo Are you sure you wish to overwrite all slots with current game data?(Y/N)?
CHOICE /N /C NY >NUL
IF ERRORLEVEL 2 GOTO BALL0
IF ERRORLEVEL 1 GOTO BACKUP
goto BACKUP
:BALL0
cls
ECHO Overwriting all Slots with current Game Save Data
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A" /e /xd "stats" "persistent" >NUL
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B" /e /xd "stats" "persistent" >NUL
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C" /e /xd "stats" "persistent" >NUL
ECHO Overwrite Complete - All Slots are based on Last Game Save!
pause 
GOTO BACKUP
:REST
cls
ECHO !logo!
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !RESTM!
ECHO !SAVLOC!
ECHO !LM!
CHOICE /N /C:1234567 >NUL
if errorlevel ==7 goto close
if errorlevel ==6 goto playnoita
if errorlevel ==5 goto MAINMENU
IF ERRORLEVEL ==4 GOTO opensave
IF ERRORLEVEL ==3 GOTO R003
IF ERRORLEVEL ==2 GOTO R002
IF ERRORLEVEL ==1 GOTO R001
:R001
cls
ECHO Restoring Save From Slot 1
robocopy %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\ %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00 /e >NUL
ECHO Backup 001 restored!
GOTO startgame
:R002
cls
ECHO Restoring Save From Slot 2
robocopy %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\ %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00 /e >NUL
ECHO Backup 002 restored!
GOTO startgame
:R003
cls
ECHO Restoring Save From Slot 3
robocopy %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\ %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00 /e >NUL
ECHO Backup 003 restored!
GOTO startgame
:DELMAIN
cls
ECHO !logo!
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !DELM!
ECHO !LM!
CHOICE /N /C:1234567 >NUL
if errorlevel ==7 goto close
if errorlevel ==6 goto playnoita
if errorlevel ==5 goto MAINMENU
IF ERRORLEVEL ==4 GOTO RMALL
IF ERRORLEVEL ==3 GOTO RM003
IF ERRORLEVEL ==2 GOTO RM002
IF ERRORLEVEL ==1 GOTO RM001
GOTO DELMAIN
:RM001
cls
ECHO Clearing Save Slot 001
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A"
ECHO Save Slot 001 Empty!
goto DELMAIN
:RM002
cls
ECHO Clearing Save Slot 002
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B"
ECHO Save Slot 002 Empty!
goto DELMAIN
:RM003
cls
ECHO Clearing Save Slot 003
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B"
ECHO Save Slot 003 Empty!
goto DELMAIN

:RMALL
cls
echo Are you sure you wish to delete all backup save slots?(Y/N)?
CHOICE /N /C NY >NUL
IF ERRORLEVEL 2 GOTO RMALL1
IF ERRORLEVEL 1 GOTO DELMAIN
goto DELMAIN
:RMALL1
cls
ECHO Clearing all backup saves (Current game is untouched)
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C"
ECHO All Slots Empty!
pause
goto DELMAIN
:TOOLS
cls
ECHO !logo!
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !TOOLS!
ECHO !SAVLOC!
ECHO !LM!
choice /n /c:1234567 >nul
if errorlevel ==7 goto close
if errorlevel ==6 goto playnoita
if errorlevel ==5 goto MAINMENU
if errorlevel ==4 goto opensave
if errorlevel ==3 goto toolloc
if errorlevel ==2 goto settings
if errorlevel ==1 goto DELMAIN
goto MAINMENU
:SEEDSTART
cls
ECHO !logo!
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !CS!
choice /n /c:1234 >nul
if errorlevel ==4 goto close
if errorlevel ==3 goto MAINMENU
if errorlevel ==2 goto playnoita
if errorlevel ==1 goto seedenter
GOTO MAINMENU
:seedenter
ECHO Comming Soon!
pause
goto SEEDSTART
:settings
ECHO Comming Soon!
pause
goto TOOLS
:startGame
echo Do you wish to start Noita? [Y/N]:
CHOICE /N /C YNM >NUL
IF ERRORLEVEL 3 GOTO MAINMENU
IF ERRORLEVEL 2 GOTO close
IF ERRORLEVEL 1 GOTO playnoita
:playnoita
ECHO Launching Noita 
start steam://rungameid/881100
GOTO GameMonitor
:GameMonitor
SETLOCAL EnableExtensions
set EXE=noita.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ProcessFound
goto ProcessNotFound
:ProcessFound
echo %EXE% is running
goto GameMonitor
:toolloc
explorer %~dp0
goto TOOLS
:opensave
explorer  "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\"
goto MAINMENU
:ProcessNotFound
echo %EXE% is not running
goto MAINMENU
:quit
cls
echo Do you want to quit(Y/N)?
CHOICE /N /C NY >NUL
IF ERRORLEVEL 2 GOTO close
IF ERRORLEVEL 1 GOTO MAINMENU
:close
cls
echo See you soon! Press Any Key
timeout 3 >NUL
EXIT 