:welcome
ECHO off
cls
echo      ``.:y.  `...`                                                                  
echo   `...--/n/ ..----.`                             :-         `:                      
echo  `.---:-:y/so:------.`                         `.+s.      `.-hy                     
echo   ----:::ymd/`.-------.`                      `.--:/.   `.--:dy                     
echo   ---:::/no`    .-:-----.`                      .odmo   .--::dy                     
echo   ---:///n/       .-:::::/o+.                    +s-`   .--::ys                     
echo   --:://+n/        `-:::/smo`                     .-::::---::::::/sh-               
echo   -::://+n/       `--::::sn`         `.`        `-.+ssss---::hdsssy+`    `          
echo   -::://+n/       `---:::sn`     ``...-/      `..::    `---::dy        `.--.```     
echo   -::///+n/       `-:::::sn` ``.-s/-------.  .----:o/   ---::dy      `-:--------/:` 
echo   :://+/+n/       `-:::/:sn`.--::dy`.----:s.  ---::hd   ---:/dy    `/hds+/---::sms. 
echo   :///+/+n/       `-::://sn`---::ds  .--::/h- ---//hd   --://dy  `.+mh:` .---//ym   
echo   :///++on/       `:::://sn`--::/ds  `-:::/oy`--://hd   -:://dy `-:hd.    .--//ym   
echo   ://+++on/       `:/:///yn`-:://ds   `:://on:-::/+hd   -:://dy`-:/hh     -:://ym   
echo   :+++o+on/       `:///++yn.://++ms    -//+on:-//++hd   ://++dy.::/sh     -::/+hm   
echo   /+++o+on/       `/+++++yn.://++ms    `/++sn:://++hd   ://++dy.///+d/    -//++hm   
echo   /++ooosn/       `/++oooyn.//+ooms     :+omm-:++oohd   :++oody.//++ss`   ://+ohm   
echo   /o+ooosn/       `/++oooyn./++oohs     /ohm+ /++oodd   /++oody`/+++oh/   :++oohm   
echo   /ooosssn/       `+oossohn./++oooo/:``-sdms` :+osodd   /+ossdy -++++oo../+++oshm   
echo   /oossssm/       `+oossshn`.ossssssssydmy:   /oossdd   /+ossdy  :+ooooshm+oooshm   
echo `-osossssh/       `+oossshn`  -/osssydmy-   `-ossssyh``:ooossyy   `:oyhmh+/osssyd`  
echo  :yhhhhhhhy/      `+osssydm`     `-/yy-      :yhhhhhho.:yyhhhhyo`   .oh/` `+hhhhhs. 
echo                   `+ssydmh:                                                         
echo                   `oydmh:                                                           
echo                   `+mh:                                                             
echo                     .  
echo			����������������������������������������ͻ
echo			�     noita save tool by hootzmctoke     �
echo			�         the time is currently:         �
echo			�		%time%		 �
echo			�         please select an option        �
echo			�         last updated - 08-18-20        �
echo			����������������������������������������͹
echo			�            1. Backup a save            �
echo			�            2. Restore a save           �
echo			�            3. Delete saves             �
echo			�            4. Play game                �
echo			�            5. Quit                     �
echo			����������������������������������������ͼ
REM ECHO ON
REM REMOVE **ECHO ON** LINE BEFORE RELEASE!!
choice /n /c:12345 >nul
if errorlevel ==5 goto close
if errorlevel ==4 goto playnoita
if errorlevel ==3 goto savetool
if errorlevel ==2 goto restore
if errorlevel ==1 goto backupmain

:backupmain
cls
@ECHO off
echo			����������������������������������������ͻ
echo			�	  Noita Save Backup Tool	 �
echo			�	Please select option below       �
echo			����������������������������������������͹
echo			�           1. Backup to Slot 1          �
echo			�           2. Backup to Slot 2          �
echo			�           3. Backup to Slot 3          �
echo			�           4. Play Game                 �
echo			�           5. Main Menu                 �
echo			�           6. Quit                      �
echo			����������������������������������������ͼ
REM ECHO ON
REM remove **ECHO ON** Line before release
CHOICE /N /C:12345 >NUL
IF ERRORLEVEL ==6 GOTO close
IF ERRORLEVEL ==5 GOTO welcome
IF ERRORLEVEL ==4 GOTO playnoita
IF ERRORLEVEL ==3 GOTO B003
IF ERRORLEVEL ==2 GOTO B002
IF ERRORLEVEL ==1 GOTO B001

:B001
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\"
Xcopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A" /s /i /E /q /y
ECHO Backup Complete - Located in Folder save00A
pause
GOTO backupmain

:B002
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\"
Xcopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B" /s /i /E /q /y
ECHO Backup Complete - Located in Folder save00B
pause
GOTO backupmain

:B003
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\"
Xcopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C" /s /i /E /q /y
ECHO Backup Complete - Located in Folder save00C
pause
GOTO backupmain

:restore
cls
@ECHO off
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
REM ECHO ON
REM remove **ECHO ON** Line before release
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
Xcopy /q/y/E "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\*" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00"
ECHO Backup 001 restored!
GOTO startgame
:R002
cls
ECHO Restoring Save From Slot 2
Xcopy /q/y/E "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\*" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00"
ECHO Backup 002 restored!
GOTO startgame
:R003
cls
ECHO Restoring Save From Slot 3
Xcopy /q/y/E "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\*" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00"
ECHO Backup 003 restored!
GOTO startgame

:savetool
cls
@ECHO off
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
REM ECHO ON
REM remove **ECHO ON** Line before release
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


:quit
echo off
cls
echo Do you want to quit(Y/N)?
CHOICE /N /C NY >NUL
IF ERRORLEVEL 2 GOTO close
IF ERRORLEVEL 1 GOTO welcome

:close
echo off
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
REM https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/commands-by-server-role