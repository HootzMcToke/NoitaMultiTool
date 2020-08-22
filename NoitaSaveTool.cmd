:: SETTINGS
@echo off
mode con:cols=80 lines=40
setlocal EnableDelayedExpansion
setlocal enableextensions
:: Start Of Variables

set TOOL=Noita Tool by HootzMcToke Version 3.0
set LAST=Build time %~t0
set PLZSEL=Please select an option



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
 [31m               ������     [33m                [31m       [33m            [31m                   
set menu=^

                    ����������������������������������������ͻ                  ^
                    �  %TOOL% �                  ^
                    �     !LAST!     �                  ^
                    �        !PLZSEL!         �                  ^
                    ����������������������������������������͹                  ^
                    �            1. Backup a save            �                  ^
                    �            2. Restore a save           �                  ^
                    �            3. Delete saves             �                  ^
                    �            4. Seed Editor              �                  ^
                    �            5. Play game                �                  ^
                    �            6. Quit                     �                  ^
                    ����������������������������������������ͼ                  



REM -End of Variables - File Wide Variables Located in this section

:welcome
cls
echo !logo!
goto mainmenu

:mainmenu
echo !menu!
choice /n /c:123456 >nul
if errorlevel ==6 goto close
if errorlevel ==5 goto playnoita
if errorlevel ==4 goto seededit
if errorlevel ==3 goto savetool
if errorlevel ==2 goto restore
if errorlevel ==1 goto backupmain

:backupmain
color 04
cls
echo !logo!
echo			����������������������������������������ͻ
echo			�	  Noita Save Backup Tool	 �
echo			�	Please select option below       �
echo			����������������������������������������͹
echo			�           1. Backup to Slot 1          �
echo			�           2. Backup to Slot 2          �
echo			�           3. Backup to Slot 3          �
echo			�           4. Overwrite All	         �
echo			�           5. Play Game                 �
echo			�           6. Main Menu                 �
echo			�           7. Quit                      �
echo			����������������������������������������ͼ
CHOICE /N /C:1234567 >NUL
IF ERRORLEVEL ==7 GOTO close
IF ERRORLEVEL ==6 GOTO welcome
IF ERRORLEVEL ==5 GOTO playnoita
IF ERRORLEVEL ==4 GOTO BALL
IF ERRORLEVEL ==3 GOTO B003
IF ERRORLEVEL ==2 GOTO B002
IF ERRORLEVEL ==1 GOTO B001
GOTO backupmain

:B001
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A" /e /xd "stats" "persistent" >NUL
ECHO Backup Complete - Located in Folder save00A
pause
GOTO backupmain

:B002
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B" /e /xd "stats" "persistent" >NUL
ECHO Backup Complete - Located in Folder save00B
pause
GOTO backupmain

:B003
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C" /e /xd "stats" "persistent" >NUL
ECHO Backup Complete - Located in Folder save00C
pause
GOTO backupmain

:BALL
cls
echo Are you sure you wish to overwrite all slots with current game data?(Y/N)?
CHOICE /N /C NY >NUL
IF ERRORLEVEL 2 GOTO BALL0
IF ERRORLEVEL 1 GOTO backupmain
goto backupmain

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
GOTO backupmain


:restore
color 09
cls
echo !logo!
echo			����������������������������������������ͻ
echo			�	  Noita Save Restore Tool	 �
echo			�	Please select option below       �
echo			����������������������������������������͹
echo			�          1. Restore From Slot 1        �
echo			�          2. Restore From Slot 2        �
echo			�          3. Restore From Slot 3        �
echo			�          4. Play Game                  �
echo			�          5. Main Menu                  �
echo			�          6. Quit                       �
echo			����������������������������������������ͼ
CHOICE /N /C:123456 >NUL
IF ERRORLEVEL ==6 GOTO close
IF ERRORLEVEL ==5 GOTO welcome
IF ERRORLEVEL ==4 GOTO playnoita
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

:savetool
color 05
cls
echo !logo!
echo			����������������������������������������ͻ
echo			�	  Noita Save Remove Tool	 �
echo			�	Please select option below       �
echo			����������������������������������������͹
echo			�          1. Delete Save 001		 �
echo			�          2. Delete Save 002		 �
echo			�          3. Delete Save 003		 �
echo			�          4. Delete All Backups	 �
echo			�          5. Play Game                  �
echo			�          6. Main Menu                  �
echo			�          7. Quit                       �
echo			����������������������������������������ͼ
CHOICE /N /C:1234567 >NUL
IF ERRORLEVEL ==7 GOTO close
IF ERRORLEVEL ==6 GOTO welcome
IF ERRORLEVEL ==5 GOTO playnoita
IF ERRORLEVEL ==4 GOTO RMALL
IF ERRORLEVEL ==3 GOTO RM003
IF ERRORLEVEL ==2 GOTO RM002
IF ERRORLEVEL ==1 GOTO RM001

:RM001
cls
ECHO Clearing Save Slot 001
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A"
ECHO Save Slot 001 Empty!
goto savetool
:RM002
cls
ECHO Clearing Save Slot 002
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B"
ECHO Save Slot 002 Empty!
goto savetool
:RM003
cls
ECHO Clearing Save Slot 003
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B"
ECHO Save Slot 003 Empty!
goto savetool

:RMALL
cls
ECHO Clearing all backup saves (Current game is untouched)
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C"
ECHO All Slots Empty!
pause
goto savetool


:startGame
echo Do you wish to start Noita? [Y/N]:
CHOICE /N /C YNM >NUL
IF ERRORLEVEL 3 GOTO welcome
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
:ProcessNotFound
echo %EXE% is not running
goto welcome


:seededit
ECHO Comming Soon!
pause
GOTO welcome

:quit
cls
echo Do you want to quit(Y/N)?
CHOICE /N /C NY >NUL
IF ERRORLEVEL 2 GOTO close
IF ERRORLEVEL 1 GOTO welcome

:close
cls
echo See you soon! Press Any Key
timeout 3 >NUL
EXIT 

REM References and Sources 
REM https://stackoverflow.com/questions/34977487/batch-menu-outlines-and-design
REM https://superuser.com/questions/1360821/how-to-center-a-text-in-a-batch-output
REM https://stackoverflow.com/questions/162291/how-to-check-if-a-process-is-running-via-a-batch-script
REM https://en.wikipedia.org/wiki/Box-drawing_character
REM https://stackoverflow.com/questions/8177695/how-to-wait-for-a-process-to-terminate-to-execute-another-process-in-batch-file/8197920
REM https://stackoverflow.com/questions/5837418/how-do-you-get-the-string-length-in-a-batch-file/5841587
REM https://steamcommunity.com/sharedfiles/filedetails/?id=1889553978
REM https://stackoverflow.com/questions/12572718/how-to-change-text-color-of-cmd-with-windows-batch-script-every-1-second
REM http://waynes-world-it.blogspot.com
REM https://jrgraphix.net/r/Unicode/2500-257F
REM http://steve-jansen.github.io/guides/windows-batch-scripting/part-1-getting-started.html
REM https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/commands-by-server-role:welcome
REM https://superuser.com/questions/700458/looking-to-create-a-batch-file-capable-of-editing-a-line-or-word-in-a-text-fil
REM https://stackoverflow.com/questions/34090258/find-steam-games-folder
REM https://github.com/Dregu/NoitaScripts
REM https://noita-tools.herokuapp.com/
REM https://superuser.com/questions/1080239/run-powershell-command-from-cmd
REM https://ss64.com/nt/color.html
REM https://www.tutorialspoint.com/batch_script/batch_script_strings.htm
REM https://superuser.com/questions/1360821/how-to-center-a-text-in-a-batch-output#comment2044527_1360862