ECHO off
mode con:cols=80 lines=45
SETlocal EnableDelayedExpansion enableextensions 
title Noita MultiTool By HootzMcToke
:: Menu Components are below
SET _Logo=^
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
SET _Title=^
            ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»            ^
            º            Noita MultiTool By HootzMcToke            º            ^
            º           Build time %~t0             º            ^
            º                Select an option below                º            ^
            ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹            
SET _Main=^
            º                 1. Backup and Restore                º            ^
            º                 2. Custom Seed Start                 º            ^
            º                 3. Open Save Folder                  º            ^
            º                 4. [1;31m*[0mnoitool.com[1;31m*[0m                     º            ^
            º                 5. Settings                          º            ^
            º                 6. Play Game                         º            ^
            º                 7. Quit                              º            ^
            ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹            ^
            º        [1;31m*[0mThis site allows you to check seeds[1;31m*[0m         º            ^
            º      [1;31m*[0mThis is not my website, its just useful[1;31m*[0m       º            ^
            ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼            
SET _BKREST=^
            º                 1. Backup Save                       º            ^
            º                 2. Restore Save                      º            ^
            º                 3. Open Save Folder                  º            ^
            º                 4. Main Menu                         º            ^
            º                 5. Play Game                         º            ^
            º                 6. Quit                              º            ^
            ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼            
SET _Backup=^
            º                 1. Backup to slot 1                  º            ^
            º                 2. Backup to slot 2                  º            ^
            º                 3. Backup to slot 3                  º            ^
            º                 4. Delete saves                      º            
SET _Restore=^
            º                 1. Restore slot 1                    º            ^
            º                 2. Restore slot 2                    º            ^
            º                 3. Restore slot 3                    º            ^
            º                 4. Delete saves                      º            
SET _Delete=^
            º                 1. Delete slot 1                     º            ^
            º                 2. Delete slot 2                     º            ^
            º                 3. Delete slot 3                     º            ^
            º                 4. Delete all                        º            
SET _Settings=^
            º                 1. Delete Saves                      º            ^
            º                 2. Open Install Folder               º            ^
            º                 3. Open Save Folder                  º            ^
            º                 4. Open Tool Folder                  º            ^
            º                 5. Main Menu                         º            ^
            º                 6. Quit                              º            ^
            ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼						
SET _Seed=^
            º                 1. Enter Seed                        º            ^
            º                 2. Launch with current magic.txt     º            ^
            º                 3. Launch with default settings      º            ^
            º                 3. Main Menu                         º            ^
            º                 4. Quit                              º            ^
            ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹            ^
            º[1;31m*[0m          [1;4;91mStart a new game for custom seed[0m          [1;31m*[0mº            ^
            ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
SET _Lower=^
            º                 5. Open save folder                  º            ^
            º                 6. Play game                         º            ^
            º                 7. Main menu                         º            ^
            º                 8. Quit                              º            ^
            ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼			
:VAR :: The things located below are the only things you may need to change 
SET GAME=Z:\SteamLibrary\steamapps\common\Noita\
:: Change to whatever folder you have noita installed in
SET STEAM=C:\"Program Files (x86)"\Steam\steam.exe
:: Change if needed to the location of the Steam.exe
SET SAVELOC="%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\"
:: Should not need to be changed
SET TOOLWEB=start chrome https://www.noitool.com/
:: Change to whatever browswer you are using
SET Seed=
:menu_Main
cls
ECHO !_Logo!
ECHO !_Title!
ECHO !_Main!
choice /n /c:1234567 >nul
if errorlevel ==7 goto Quit 					:: Quit
if errorlevel ==6 goto PLAY 					:: Playgame
if errorlevel ==5 goto menu_Settings			:: Settings
if errorlevel ==4 !TOOLWEB! & goto menu_Main	:: Noitatool.com this site allows you to check seeds, you can change this if you wish.
if errorlevel ==3 goto OpenSave					:: Open save Folder
if errorlevel ==2 goto menu_CustomSeed 			:: Custom Seed Start
if errorlevel ==1 goto menu_BackupRestore 		:: Backup and Restore
goto menu_Main
:menu_BackupRestore
cls
ECHO !_Logo!
ECHO !_Title!
ECHO !_BKREST!
choice /n /c:123456 >nul
if errorlevel ==6 goto Quit :: Quit
if errorlevel ==5 goto PLAY :: Play Game
if errorlevel ==4 goto menu_Main :: Main Menu
if errorlevel ==3 goto OpenSave :: Open Save Folder
if errorlevel ==2 goto menu_Restore :: Restore Menu
if errorlevel ==1 goto menu_Backup :: Backup Menu
goto menu_BackupRestore
:menu_Backup
cls
ECHO !_Logo!
ECHO !_Title!
ECHO !_Backup!
ECHO !_Lower!
CHOICE /N /C:12345678 >NUL
IF ERRORLEVEL ==8 GOTO Quit :: Quit 
IF ERRORLEVEL ==7 GOTO menu_Main
IF ERRORLEVEL ==6 GOTO PLAY :: Play game
IF ERRORLEVEL ==5 GOTO OpenSave :: Open Save Folder
IF ERRORLEVEL ==4 GOTO menu_Delete :: Delete Menu
IF ERRORLEVEL ==3 GOTO B003 :: Backup Slot 3
IF ERRORLEVEL ==2 GOTO B002 :: Backup Slot 2
IF ERRORLEVEL ==1 GOTO B001 :: Backup Slot 1
GOTO menu_Backup
:B001
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A" /e /xd "stats" "persistent" >NUL
ECHO Backup Complete - Located in Folder save00A
GOTO startgame
:B002
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B" /e /xd "stats" "persistent" >NUL
ECHO Backup Complete - Located in Folder save00B
GOTO startgame
:B003
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C" /e /xd "stats" "persistent" >NUL
ECHO Backup Complete - Located in Folder save00C
GOTO startgame
:menu_Restore
cls
ECHO !_Logo!
ECHO !_Title!
ECHO !_Restore!
ECHO !_Lower!
CHOICE /N /C:12345678 >NUL
if errorlevel ==8 goto Quit         :: Quit
if errorlevel ==7 goto menu_Main    :: Main Menu
if errorlevel ==6 goto PLAY         :: Play Game
IF ERRORLEVEL ==5 GOTO OpenSave     :: Open save Folder
IF ERRORLEVEL ==4 GOTO menu_Delete  :: Delete Menu
IF ERRORLEVEL ==3 GOTO R003         :: Restore Slot 3
IF ERRORLEVEL ==2 GOTO R002			:: Restore Slot 2
IF ERRORLEVEL ==1 GOTO R001			:: Restore Slot 1
goto menu_Restore
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
:menu_Delete
cls
ECHO !_Logo!
ECHO !_Title!
ECHO !_Delete!
ECHO !_Lower!
CHOICE /N /C:12345678 >NUL
if errorlevel ==8 goto Quit			:: Quit
if errorlevel ==7 goto menu_Main    :: Main Menu
if errorlevel ==6 goto PLAY         :: Play Game
if errorlevel ==5 goto OpenSave     :: Open save Folder
IF ERRORLEVEL ==4 GOTO RMALL        :: Remove All Saves
IF ERRORLEVEL ==3 GOTO RM003        :: Delete Slot 3
IF ERRORLEVEL ==2 GOTO RM002        :: Delete Slot 2
IF ERRORLEVEL ==1 GOTO RM001        :: Delete Slot 1
GOTO menu_Delete
:RM001
cls
ECHO Clearing Save Slot 001
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A"
ECHO Save Slot 001 Empty!
pause
goto menu_Delete
:RM002
cls
ECHO Clearing Save Slot 002
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B"
ECHO Save Slot 002 Empty!
goto menu_Delete
:RM003
cls
ECHO Clearing Save Slot 003
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B"
ECHO Save Slot 003 Empty!
goto menu_Delete
:RMALL
cls
ECHO Are you sure you wish to delete all backup save slots?(Y/N)?
CHOICE /N /C NY >NUL
IF ERRORLEVEL 2 GOTO RMALL1
IF ERRORLEVEL 1 GOTO menu_Delete
goto menu_Delete
:RMALL1
cls
ECHO Clearing all backup saves (Current game is untouched)
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C"
ECHO All Slots Empty!
pause
goto menu_Delete
:menu_CustomSeed
cls
ECHO !_Logo!
ECHO !_Title!
ECHO !_Seed!
choice /n /c:12345 >nul
if errorlevel ==5 goto Quit			:: Quit
if errorlevel ==4 goto menu_Main    :: Playgame
if errorlevel ==3 goto PLAY         :: Settings
if errorlevel ==2 goto PLAYMAGIC	:: Launch with last seed
if errorlevel ==1 goto CustomSeed	:: Enter Seed and launch
GOTO MAINMENU
:CustomSeed
cls
ECHO Enter desired seed:
SET /p Seed= 
cls
ECHO Seed Set to -- !Seed!
ECHO Deleting old magic.txt
del %game%\magic.txt
(
	echo ^<MagicNumbers
	echo WORLD_SEED="!seed!"
	echo _DEBUG_DONT_LOAD_OTHER_MAGIC_NUMBERS="1"
	echo _DEBUG_DONT_SAVE_MAGIC_NUMBERS="1" ^>
	echo ^</MagicNumbers^>
)>"%game%\magic.txt"
ECHO Launching With the Seed !seed!
start %STEAM% -applaunch 881100 -no_logo_splashes -magic_numbers magic.txt
timeout /t 5 >nul
GOTO GameMonitor
:PLAYMAGIC
cls
ECHO Launching with magic_numbers enabled
start %STEAM% -applaunch 881100 -no_logo_splashes -magic_numbers magic.txt
timeout /t 5 >nul
GOTO GameMonitor
:menu_Settings
cls
echo !_Logo!
echo !_Title!
echo !_Settings!
choice /n /c:123456 >nul
if errorlevel ==6 goto Quit			:: Quit
if errorlevel ==5 goto menu_Main	:: Main Menu
if errorlevel ==4 goto OpenTool		:: Open Tool Folder
if errorlevel ==3 goto OpenSave		:: Open Save Folder
if errorlevel ==2 goto OpenInstall	:: Open Install folder
if errorlevel ==1 goto menu_Delete	:: Delete Menu
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
:GameMonitor
SETLOCAL EnableExtensions
SET EXE=noita.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ProcessFound
goto ProcessNotFound
:ProcessFound
ECHO %EXE% is running
goto GameMonitor
:OpenTool
explorer %~dp0
goto menu_Main
:OpenSave
explorer  !SAVELOC!
goto menu_Main
:OpenInstall
explorer !GAME!
goto menu_Main
:ProcessNotFound
ECHO %EXE% is not running
goto menu_Main
:quit
cls
ECHO Do you want to quit(Y/N)?
CHOICE /N /C NY  >NUL
IF ERRORLEVEL 2 GOTO close
IF ERRORLEVEL 1 GOTO menu_Main
:close
cls
ECHO See you soon! Press Any Key
timeout 0 >NUL
EXIT