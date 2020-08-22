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
 [31m               ²²²²²²     [33m                [31m       [33m            [31m                   
set menu=^

                    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»                  ^
                    º  %TOOL% º                  ^
                    º     !LAST!     º                  ^
                    º        !PLZSEL!         º                  ^
                    ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹                  ^
                    º            1. Backup a save            º                  ^
                    º            2. Restore a save           º                  ^
                    º            3. Delete saves             º                  ^
                    º            4. Seed Editor              º                  ^
                    º            5. Play game                º                  ^
                    º            6. Quit                     º                  ^
                    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼                  



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
echo			ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo			º	  Noita Save Backup Tool	 º
echo			º	Please select option below       º
echo			ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹
echo			º           1. Backup to Slot 1          º
echo			º           2. Backup to Slot 2          º
echo			º           3. Backup to Slot 3          º
echo			º           4. Overwrite All	         º
echo			º           5. Play Game                 º
echo			º           6. Main Menu                 º
echo			º           7. Quit                      º
echo			ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
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
echo			ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo			º	  Noita Save Restore Tool	 º
echo			º	Please select option below       º
echo			ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹
echo			º          1. Restore From Slot 1        º
echo			º          2. Restore From Slot 2        º
echo			º          3. Restore From Slot 3        º
echo			º          4. Play Game                  º
echo			º          5. Main Menu                  º
echo			º          6. Quit                       º
echo			ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
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
echo			ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo			º	  Noita Save Remove Tool	 º
echo			º	Please select option below       º
echo			ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹
echo			º          1. Delete Save 001		 º
echo			º          2. Delete Save 002		 º
echo			º          3. Delete Save 003		 º
echo			º          4. Delete All Backups	 º
echo			º          5. Play Game                  º
echo			º          6. Main Menu                  º
echo			º          7. Quit                       º
echo			ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
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