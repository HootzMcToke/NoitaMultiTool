ECHO off
mode con:cols=80 lines=50
SETlocal EnableDelayedExpansion
SETlocal enableextensions
title Noita Tool by HootzMcToke Version 3.5
:: Menu Components are below
SET Menu_Logo=^

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
SET Menu_Title=^
            ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»            ^
            º        Noita Tool by HootzMcToke Version 3.5         º            ^
            º           Build time %~t0             º            ^
            º                Select an option below                º            ^
            ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹            
SET Menu_Main=^
            º                 1. Backup a save                     º            ^
            º                 2. Restore a save                    º            ^
            º                 3. Custom Seed Start                 º            ^
            º                 4. Tools                             º            ^
            º                 5. Play Game                         º            ^
            º                 6. Quit                              º            ^
            ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹            ^
            º*Features are not completed yet                       º            ^
            º*This currently works only with the steam version     º            ^
            º*You can modify the script to work with other versionsº            ^
            ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼            
SET Menu_Backup=^
            º                 1. Backup to slot 1                  º            ^
            º                 2. Backup to slot 2                  º            ^
            º                 3. Backup to slot 3                  º            ^
            º                 4. Delete saves                      º            
SET Menu_Restore=^
            º                 1. Restore slot 1                    º            ^
            º                 2. Restore slot 2                    º            ^
            º                 3. Restore slot 3                    º            ^
            º                 4. Delete saves                      º            
SET Menu_Delete=^
            º                 1. Delete slot 1                     º            ^
            º                 2. Delete slot 2                     º            ^
            º                 3. Delete slot 3                     º            ^
            º                 4. Delete all                        º            
SET Menu_Tools=^
            º               1. Delete Saves                        º            ^
            º               2. Settings                            º            ^
            º               3. Open Install Folder                 º            ^
            º               4. Open Save Folder                    º            ^
            º               5. Open Tool Folder                    º            ^
            º               6. Main Menu                           º            ^
            º               7. Quit                                º            ^
            ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹            ^
            º*To open install folder you must set the GAME variableº            ^
            ºcorrectly, this is located at the top of this script  º            ^
            ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼						
SET Menu_Seed=^
            º               1. Enter Seed                          º            ^
            º               2. Reset                               º            ^
            º               3. Play Game (No Change)               º            ^
            º               4. Main Menu                           º            ^
            º               5. Quit                                º            ^
            ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹            ^
            º*Feature is not completed yet                         º            ^
            º*Seed will be set unless reset                        º            ^
            º*This will only work if the SET=GAME is correct       º            ^
            º*Setting the seed will delete current save data       º            ^
            ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼ 
SET Menu_Settings=^
            º                 1. Steam.exe Location                º            ^
            º                 2. Noita.exe Location                º            ^
            º                 3. Main Menu                         º            ^
            º                 4. Play Game                         º            ^
            º                 5. Quit                              º            ^
            ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹            ^
            º*Features are not completed yet                       º            ^
            º*This currently works only with the steam version     º            ^
            º*You can modify the script to work with other versionsº            ^
            ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
			
SET Menu_Lower=^
            º                 5. Open save folder                  º            ^
            º                 6. Play game                         º            ^
            º                 7. Main menu                         º            ^
            º                 8. Quit                              º            ^
            ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼			
:: Noita Install
SET GAME=Z:\SteamLibrary\steamapps\common\Noita
:: Steam Install
SET STEAM=C:\"Program Files (x86)"\Steam\steam.exe
:: World Seed
SET seed=669 


:MAINMENU
cls
ECHO !Menu_Logo!
ECHO !Menu_Title!
ECHO !Menu_Main!
choice /n /c:123456 >nul
if errorlevel ==6 goto close
if errorlevel ==5 goto PLAY
if errorlevel ==4 goto TOOLS
if errorlevel ==3 goto SEEDSTART
if errorlevel ==2 goto REST
if errorlevel ==1 goto BACKUP
goto MAINMENU
:BACKUP
cls
ECHO !Menu_Logo!
ECHO !Menu_Title!
ECHO !Menu_Backup!
ECHO !Menu_Lower!
CHOICE /N /C:12345678 >NUL
if errorlevel ==8 goto close
if errorlevel ==7 goto MAINMENU
if errorlevel ==6 goto PLAY
IF ERRORLEVEL ==5 GOTO opensave
IF ERRORLEVEL ==4 GOTO DELMAIN
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
ECHO Are you sure you wish to overwrite all slots with current game data?(Y/N)?
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
ECHO !Menu_Logo!
ECHO !Menu_Title!
ECHO !Menu_Restore!
ECHO !Menu_Lower!
CHOICE /N /C:12345678 >NUL
if errorlevel ==8 goto close
if errorlevel ==7 goto MAINMENU
if errorlevel ==6 goto PLAY
IF ERRORLEVEL ==5 GOTO opensave
IF ERRORLEVEL ==4 GOTO DELMAIN
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
ECHO !Menu_Logo!
ECHO !Menu_Title!
ECHO !Menu_Delete!
ECHO !Menu_Lower!
CHOICE /N /C:12345678 >NUL
if errorlevel ==8 goto close
if errorlevel ==7 goto MAINMENU
if errorlevel ==6 goto PLAY
if errorlevel ==5 goto opensave
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
pause
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
ECHO Are you sure you wish to delete all backup save slots?(Y/N)?
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
ECHO !Menu_Logo!
ECHO !Menu_Title!
ECHO !Menu_Tools!
ECHO Noita is installed at the below location:
ECHO !GAME!
choice /n /c:1234567 >nul
if errorlevel ==7 goto close
if errorlevel ==6 goto MAINMENU
if errorlevel ==5 goto toolloc
if errorlevel ==4 goto opensave
if errorlevel ==3 goto gameloc
if errorlevel ==2 goto settings
if errorlevel ==1 goto DELMAIN
goto MAINMENU
:SEEDSTART
cls
ECHO !Menu_Logo!
ECHO !Menu_Title!
ECHO !Menu_Seed!
choice /n /c:12345 >nul
if errorlevel ==5 goto close
if errorlevel ==4 goto MAINMENU
if errorlevel ==3 goto PLAY
if errorlevel ==2 goto resetseed
if errorlevel ==1 goto seedenter
GOTO MAINMENU
:resetseed
ECHO Comming Soon!
pause
goto SEEDSTART
:seedenter
echo Comming Soon
pause
goto PLAYMAGIC
:settings
cls
echo !Menu_Logo!
echo !Menu_Title!
echo !Menu_Settings!
choice /n /c:12345 >nul
if errorlevel ==5 goto close
if errorlevel ==4 goto PLAY
if errorlevel ==3 goto MAINMENU
if errorlevel ==2 goto NoitaEnter
if errorlevel ==1 goto SteamEnter
goto settings
:NoitaEnter
ECHO Comming soon
pause
goto settings
:SteamEnter
ECHO Comming Soon
pause
goto settings
:startGame
ECHO Do you wish to start Noita? [Y/N]:
CHOICE /N /C YNM >NUL
IF ERRORLEVEL 3 GOTO MAINMENU
IF ERRORLEVEL 2 GOTO close
IF ERRORLEVEL 1 GOTO PLAY
:PLAY
ECHO Launching Noita
start %STEAM% -applaunch 881100 -no_logo_splashes
GOTO GameMonitor
:PLAYMAGIC 
ECHO Deleting old magic.txt
del %game%\magic.txt
(
	echo ^<MagicNumbers
	echo WORLD_SEED="!seed!"
	echo _DEBUG_DONT_LOAD_OTHER_MAGIC_NUMBERS="1"
	echo _DEBUG_DONT_SAVE_MAGIC_NUMBERS="1" ^>
	echo ^</MagicNumbers^>
)>"%game%\magic.txt"
ECHO Launching With Custom Seed
start %STEAM% -applaunch 881100 -no_logo_splashes -magic_numbers magic.txt
GOTO GameMonitor
:GameMonitor
SETLOCAL EnableExtensions
SET EXE=noita.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ProcessFound
goto ProcessNotFound
:ProcessFound
ECHO %EXE% is running
goto GameMonitor
:toolloc
explorer %~dp0
goto TOOLS
:opensave
explorer  "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\"
goto MAINMENU
:gameloc
explorer !GAME!
goto TOOLS
:ProcessNotFound
ECHO %EXE% is not running
goto MAINMENU
:quit
cls
ECHO Do you want to quit(Y/N)?
CHOICE /N /C NY >NUL
IF ERRORLEVEL 2 GOTO close
IF ERRORLEVEL 1 GOTO MAINMENU
:close
cls
ECHO See you soon! Press Any Key
timeout 3 >NUL
EXIT