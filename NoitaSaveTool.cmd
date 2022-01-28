ECHO off
mode con:cols=80 lines=50
SETlocal EnableDelayedExpansion
SETlocal enableextensions
title Noita Tool by HootzMcToke Version 3.5
:: Menu Components are below
SET Menu_Logo=^

 [31m    ��     ���            [33m                [31m       [33m               [31m               ^
 [31m   ������  ������         [33m                [31m       [33m               [31m               ^
 [31m ������������������       [33m                [31m  ���� [33m      ���      [31m               ^
 [31m ����������  ��������     [33m                [31m ����� [33m    �����      [31m               ^
 [31m ��������      ��������   [33m                [31m   ����[33m   ������      [31m               ^
 [31m ��������        ���������[33m                [31m    �[33m     ������      [31m               ^
 [31m ��������         ��������[33m                [31m    � [33m�����������������[31m              ^
 [31m ��������        �������� [33m         �      [31m   �  [33m��������������� [31m      �        ^
 [31m ��������        �������� [33m     ������     [31m ����  [33m   ������  [31m       �������     ^
 [31m ��������        �������� [33m�������������   [31m�������[33m   ������  [31m     ������������  ^
 [31m ��������        �������� [33m������ �������� [31m ������[33m   ������  [31m   ����  ��������  ^
 [31m ��������        �������� [33m������   ������ [31m ������[33m   ������  [31m  ����    �������  ^
 [31m ��������        �������� [33m������    ������[31m ������[33m   ������  [31m ����     �������  ^
 [31m ��������        �������� [33m������    ������[31m ������[33m   ������  [31m�����     �������  ^
 [31m ��������        �������� [33m������    ������[31m ������[33m   ������  [31m�����     �������  ^
 [31m ��������        �������� [33m������     �����[31m ������[33m   ������  [31m������    �������  ^
 [31m ��������        �������� [33m������     ���� [31m ������[33m   ������  [31m�������   �������  ^
 [31m ��������        �������� [33m��������  ����� [31m ������[33m   ������  [31m ������  ��������  ^
 [31m ��������        �������� [33m�������������   [31m ������[33m   ������  [31m  ���������������  ^
 [31m ��������        �������� [33m   ��������     [31m�������[33m  �������  [31m    ����� �������  ^
 [31m ����������      �������� [33m       ��       [31m��������[33m �������� [31m     �     ������  ^
 [31m               ������     [33m                [31m       [33m            [31m					 ^

[43m��������������������������������������������������������������������������������[0m						 ^	
SET Menu_Title=^
            ������������������������������������������������������ͻ            ^
            �        Noita Tool by HootzMcToke Version 3.5         �            ^
            �           Build time %~t0             �            ^
            �                Select an option below                �            ^
            ������������������������������������������������������͹            
SET Menu_Main=^
            �* YOU MUST GENERATE A SETTINGS FILE BEFORE FIRST USE *�            ^
            ������������������������������������������������������͹            ^
            �                 1. Backup a save                     �            ^
            �                 2. Restore a save                    �            ^
            �                 3. Custom Seed Start                 �            ^
            �                 4. Settings /  Tools                 �            ^
            �                 5. Play Game                         �            ^
            �                 6. Quit                              �            ^
            ������������������������������������������������������͹            ^
            �*Features are not completed yet                       �            ^
            �*This currently works only with the steam version     �            ^
            �*You can modify the script to work with other versions�            ^
            ������������������������������������������������������ͼ            
SET Menu_Backup=^
            �                 1. Backup to slot 1                  �            ^
            �                 2. Backup to slot 2                  �            ^
            �                 3. Backup to slot 3                  �            ^
            �                 4. Delete saves                      �            
SET Menu_Restore=^
            �                 1. Restore slot 1                    �            ^
            �                 2. Restore slot 2                    �            ^
            �                 3. Restore slot 3                    �            ^
            �                 4. Delete saves                      �            
SET Menu_Delete=^
            �                 1. Delete slot 1                     �            ^
            �                 2. Delete slot 2                     �            ^
            �                 3. Delete slot 3                     �            ^
            �                 4. Delete all                        �            
SET Menu_Tools=^
            �               1. Delete Saves                        �            ^
            �               2. Settings                            �            ^
            �               3. Open Install Folder                 �            ^
            �               4. Open Save Folder                    �            ^
            �               5. Open Tool Folder                    �            ^
            �               6. Main Menu                           �            ^
            �               7. Quit                                �            ^
            ������������������������������������������������������͹            ^
            �*To open install folder you must set the GAME variable�            ^
            �correctly, this is located at the top of this script  �            ^
            ������������������������������������������������������ͼ						
SET Menu_Seed=^
            �               1. Enter Seed                          �            ^
            �               2. Play Game (No Seed)                 �            ^
            �               3. Main Menu                           �            ^
            �               4. Quit                                �            ^
            ������������������������������������������������������͹            ^
            �*"Enter Seed" launches the game with current set seed �            ^
            �*This will only work if the SET=GAME is correct       �            ^
            �*You need to start a new game for the seed to change  �            ^
            ������������������������������������������������������ͼ 
SET Menu_Settings=^
            �* YOU MUST GENERATE A SETTINGS FILE BEFORE FIRST USE *�            ^
            ������������������������������������������������������͹            ^
            �                 1. Set Steam.exe Location            �            ^
            �                 2. Set Noita.exe Location            �            ^
            �                 3. Generate Settings File            �            ^
            �                 4. Main Menu                         �            ^
            �                 5. Play Game                         �            ^
            �                 6. Quit                              �            ^
            ������������������������������������������������������͹            ^
            �*Features are not completed yet                       �            ^
            �*This currently works only with the steam version     �            ^
            ������������������������������������������������������ͼ
			
SET Menu_Lower=^
            �                 5. Open save folder                  �            ^
            �                 6. Play game                         �            ^
            �                 7. Main menu                         �            ^
            �                 8. Quit                              �            ^
            ������������������������������������������������������ͼ			
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