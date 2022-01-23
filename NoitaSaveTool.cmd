echo off
mode con:cols=80 lines=50
setlocal EnableDelayedExpansion
setlocal enableextensions
set title=                �  Noita Tool by HootzMcToke Version 3    �
set LAST=                �      Build time %~t0     �
title %title%
SET BOXTOP=		�����������������������������������������ͻ
SET SELECT=		�         Select an option below          �
SET BOXMID=		�����������������������������������������͹
SET LM=^
		�             5. Main Menu                �                       ^
		�             6. Play game                �                       ^
		�             7. Quit                     �                       ^
		�����������������������������������������ͼ                                
set MM=^
                �             1. Backup a save            �                     ^
                �             2. Restore a save           �                     ^
                �             3. Tools                    �                     ^
                �             4. Custom Seed Start        �
set BKM=^
                �             1. Backup to Slot 1         �                     ^
                �             2. Backup to Slot 2         �                     ^
                �             3. Backup to Slot 3         �
set RESTM=^
                �             1. Restore From Slot 1      �                     ^
                �             2. Restore From Slot 2      �                     ^
                �             3. Restore From Slot 3      �
set DELM=^
                �             1. Delete Save 001          �                     ^
                �             2. Delete Save 002          �                     ^
                �             3. Delete Save 003          �                     ^
                �             4. Delete All Backups       �                     
set TOOLS=^
                �             1. Delete Saves             �                     ^
                �             2. Settings                 �                     ^
                �             3. Open Tool Location       �
set CS=^
                �             1. Enter Seed               �                     ^
                �             2. Play Game (No Change)    �                     ^
                �             3. Main Menu                �                     ^
                �             4. Quit                     �                     ^
		        �����������������������������������������ͼ			
SET SAVLOC=                �             4. Open Save Location       �
set logo=^

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