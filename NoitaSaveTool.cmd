ECHO off
mode con:cols=80 lines=50
SETlocal EnableDelayedExpansion
SETlocal enableextensions
title Noita Tool by HootzMcToke Version 3.5
:: Menu Components are below
SET Menu_Logo=^

 [31m    ฐฒ     ฒฒฐ            [33m                [31m       [33m               [31m               ^
 [31m   ฒฒฒฒฒฒ  ฒฒฒฒฒฒ         [33m                [31m       [33m               [31m               ^
 [31m ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ       [33m                [31m  ฒฒฒฒ [33m      ฒฒฒ      [31m               ^
 [31m ฒฒฒฒฒฒฒฒฒฒ  ฒฒฒฒฒฒฒฒ     [33m                [31m ฒฒฒฒฒ [33m    ฒฒฒฒฒ      [31m               ^
 [31m ฒฒฒฒฒฒฒฒ      ฒฒฒฒฒฒฒฒ   [33m                [31m   ฒฒฒฒ[33m   ฒฒฒฒฒฒ      [31m               ^
 [31m ฒฒฒฒฒฒฒฒ        ฒฒฒฒฒฒฒฒฒ[33m                [31m    ฒ[33m     ฒฒฒฒฒฒ      [31m               ^
 [31m ฒฒฒฒฒฒฒฒ         ฒฒฒฒฒฒฒฐ[33m                [31m    ฐ [33mฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฑ[31m              ^
 [31m ฒฒฒฒฒฒฒฒ        ฒฒฒฒฒฒฒฒ [33m         ฒ      [31m   ฒ  [33mฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ [31m      ฒ        ^
 [31m ฒฒฒฒฒฒฒฒ        ฒฒฒฒฒฒฒฒ [33m     ฒฒฒฒฒฒ     [31m ฒฒฒฒ  [33m   ฒฒฒฒฒฒ  [31m       ฒฒฒฒฒฒฒ     ^
 [31m ฒฒฒฒฒฒฒฒ        ฒฒฒฒฒฒฒฒ [33mฒฒฒฒฒฒฒฒฒฒฒฒฒ   [31mฒฒฒฒฒฒฒ[33m   ฒฒฒฒฒฒ  [31m     ฒฒฒฒฒฒฒฒฒฒฒฒ  ^
 [31m ฒฒฒฒฒฒฒฒ        ฒฒฒฒฒฒฒฒ [33mฒฒฒฒฒฒ ฒฒฒฒฒฒฒฒ [31m ฒฒฒฒฒฒ[33m   ฒฒฒฒฒฒ  [31m   ฒฒฒฒ  ฒฒฒฒฒฒฒฒ  ^
 [31m ฒฒฒฒฒฒฒฒ        ฒฒฒฒฒฒฒฒ [33mฒฒฒฒฒฒ   ฒฒฒฒฒฒ [31m ฒฒฒฒฒฒ[33m   ฒฒฒฒฒฒ  [31m  ฒฒฒฒ    ฒฒฒฒฒฒฒ  ^
 [31m ฒฒฒฒฒฒฒฒ        ฒฒฒฒฒฒฒฒ [33mฒฒฒฒฒฒ    ฒฒฒฒฒฒ[31m ฒฒฒฒฒฒ[33m   ฒฒฒฒฒฒ  [31m ฒฒฒฒ     ฒฒฒฒฒฒฒ  ^
 [31m ฒฒฒฒฒฒฒฒ        ฒฒฒฒฒฒฒฒ [33mฒฒฒฒฒฒ    ฒฒฒฒฒฒ[31m ฒฒฒฒฒฒ[33m   ฒฒฒฒฒฒ  [31mฒฒฒฒฒ     ฒฒฒฒฒฒฒ  ^
 [31m ฒฒฒฒฒฒฒฒ        ฒฒฒฒฒฒฒฒ [33mฒฒฒฒฒฒ    ฒฒฒฒฒฒ[31m ฒฒฒฒฒฒ[33m   ฒฒฒฒฒฒ  [31mฒฒฒฒฒ     ฒฒฒฒฒฒฒ  ^
 [31m ฒฒฒฒฒฒฒฒ        ฒฒฒฒฒฒฒฒ [33mฒฒฒฒฒฒ     ฒฒฒฒฒ[31m ฒฒฒฒฒฒ[33m   ฒฒฒฒฒฒ  [31mฒฒฒฒฒฒ    ฒฒฒฒฒฒฒ  ^
 [31m ฒฒฒฒฒฒฒฒ        ฒฒฒฒฒฒฒฒ [33mฒฒฒฒฒฒ     ฒฒฒฒ [31m ฒฒฒฒฒฒ[33m   ฒฒฒฒฒฒ  [31mฒฒฒฒฒฒฒ   ฒฒฒฒฒฒฒ  ^
 [31m ฒฒฒฒฒฒฒฒ        ฒฒฒฒฒฒฒฒ [33mฒฒฒฒฒฒฒฒ  ฒฒฒฒฒ [31m ฒฒฒฒฒฒ[33m   ฒฒฒฒฒฒ  [31m ฒฒฒฒฒฒ  ฒฒฒฒฒฒฒฒ  ^
 [31m ฒฒฒฒฒฒฒฒ        ฒฒฒฒฒฒฒฒ [33mฐฒฒฒฒฒฒฒฒฒฒฒฑ   [31m ฒฒฒฒฒฒ[33m   ฒฒฒฒฒฒ  [31m  ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ  ^
 [31m ฒฒฒฒฒฒฒฒ        ฒฒฒฒฒฒฒฒ [33m   ฒฒฒฒฒฒฒฒ     [31mฒฒฒฒฒฒฒ[33m  ฒฒฒฒฒฒฒ  [31m    ฒฒฒฒฒ ฒฒฒฒฒฒฒ  ^
 [31m ฒฒฒฒฒฒฒฒฒฒ      ฒฒฒฒฒฒฒฒ [33m       ฒฒ       [31mฒฒฒฒฒฒฒฒ[33m ฒฒฒฒฒฒฒฒ [31m     ฒ     ฒฒฒฒฒฒ  ^
 [31m               ฒฒฒฒฒฒ     [33m                [31m       [33m            [31m					 ^

[43mÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ[0m						 ^	
SET Menu_Title=^
            ษออออออออออออออออออออออออออออออออออออออออออออออออออออออป            ^
            บ        Noita Tool by HootzMcToke Version 3.5         บ            ^
            บ           Build time %~t0             บ            ^
            บ                Select an option below                บ            ^
            ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออน            
SET Menu_Main=^
            บ* YOU MUST GENERATE A SETTINGS FILE BEFORE FIRST USE *บ            ^
            ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออน            ^
            บ                 1. Backup a save                     บ            ^
            บ                 2. Restore a save                    บ            ^
            บ                 3. Custom Seed Start                 บ            ^
            บ                 4. Settings /  Tools                 บ            ^
            บ                 5. Play Game                         บ            ^
            บ                 6. Quit                              บ            ^
            ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออน            ^
            บ*Features are not completed yet                       บ            ^
            บ*This currently works only with the steam version     บ            ^
            บ*You can modify the script to work with other versionsบ            ^
            ศออออออออออออออออออออออออออออออออออออออออออออออออออออออผ            
SET Menu_Backup=^
            บ                 1. Backup to slot 1                  บ            ^
            บ                 2. Backup to slot 2                  บ            ^
            บ                 3. Backup to slot 3                  บ            ^
            บ                 4. Delete saves                      บ            
SET Menu_Restore=^
            บ                 1. Restore slot 1                    บ            ^
            บ                 2. Restore slot 2                    บ            ^
            บ                 3. Restore slot 3                    บ            ^
            บ                 4. Delete saves                      บ            
SET Menu_Delete=^
            บ                 1. Delete slot 1                     บ            ^
            บ                 2. Delete slot 2                     บ            ^
            บ                 3. Delete slot 3                     บ            ^
            บ                 4. Delete all                        บ            
SET Menu_Tools=^
            บ               1. Delete Saves                        บ            ^
            บ               2. Settings                            บ            ^
            บ               3. Open Install Folder                 บ            ^
            บ               4. Open Save Folder                    บ            ^
            บ               5. Open Tool Folder                    บ            ^
            บ               6. Main Menu                           บ            ^
            บ               7. Quit                                บ            ^
            ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออน            ^
            บ*To open install folder you must set the GAME variableบ            ^
            บcorrectly, this is located at the top of this script  บ            ^
            ศออออออออออออออออออออออออออออออออออออออออออออออออออออออผ						
SET Menu_Seed=^
            บ               1. Enter Seed                          บ            ^
            บ               2. Play Game (No Seed)                 บ            ^
            บ               3. Main Menu                           บ            ^
            บ               4. Quit                                บ            ^
            ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออน            ^
            บ*"Enter Seed" launches the game with current set seed บ            ^
            บ*This will only work if the SET=GAME is correct       บ            ^
            บ*You need to start a new game for the seed to change  บ            ^
            ศออออออออออออออออออออออออออออออออออออออออออออออออออออออผ 
SET Menu_Settings=^
            บ* YOU MUST GENERATE A SETTINGS FILE BEFORE FIRST USE *บ            ^
            ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออน            ^
            บ                 1. Set Steam.exe Location            บ            ^
            บ                 2. Set Noita.exe Location            บ            ^
            บ                 3. Generate Settings File            บ            ^
            บ                 4. Main Menu                         บ            ^
            บ                 5. Play Game                         บ            ^
            บ                 6. Quit                              บ            ^
            ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออน            ^
            บ*Features are not completed yet                       บ            ^
            บ*This currently works only with the steam version     บ            ^
            ศออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
			
SET Menu_Lower=^
            บ                 5. Open save folder                  บ            ^
            บ                 6. Play game                         บ            ^
            บ                 7. Main menu                         บ            ^
            บ                 8. Quit                              บ            ^
            ศออออออออออออออออออออออออออออออออออออออออออออออออออออออผ			
:: Variables are now stored in the SaveToolSettings.bat file, the following block calls them
:VAR
(
SET /p GAME= 
SET /p STEAM= 
SET /p Seed=
)< SaveToolSettings.bat
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
choice /n /c:1234 >nul
if errorlevel ==4 goto close
if errorlevel ==3 goto MAINMENU
if errorlevel ==2 goto PLAY
if errorlevel ==1 goto seedenter
GOTO MAINMENU
:seedenter
echo Comming Soon
pause
goto PLAYMAGIC
:settings
cls
echo !Menu_Logo!
echo !Menu_Title!
echo !Menu_Settings!
choice /n /c:123456 >nul
if errorlevel ==6 goto close
if errorlevel ==5 goto PLAY
if errorlevel ==4 goto MAINMENU
if errorlevel ==3 goto Generate
if errorlevel ==2 goto NoitaEnter
if errorlevel ==1 goto SteamEnter
goto settings
:NoitaEnter
ECHO Comming soon
pause
goto settings
:SteamEnter
ECHO Enter Steam location IE: "C:\"Program Files (x86)"\Steam\steam.exe"
SET /P STEAM=
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
:Generate
(
	echo Z:\SteamLibrary\steamapps\common\Noita
	echo C:\"Program Files (x86)"\Steam\steam.exe
	echo 69
)>SaveToolSettings.bat
ECHO SaveToolSettings.bat created - you can now use the tool
pause
goto VAR
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