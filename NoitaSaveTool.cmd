@ECHO off
:welcome
echo off
cls
:welcome2
echo      ``.:y.  `...`                                                                  
echo   `...--/N/ ..----.`                             :-         `:                      
echo  `.---:-:y/so:------.`                         `.+s.      `.-hy                     
echo   ----:::ymd/`.-------.`                      `.--:/.   `.--:dy                     
echo   ---:::/No`    .-:-----.`                      .odmo   .--::dy                     
echo   ---:///N/       .-:::::/o+.                    +s-`   .--::ys                     
echo   --:://+N/        `-:::/smo`                     .-::::---::::::/sh-               
echo   -::://+N/       `--::::sN`         `.`        `-.+ssss---::hdsssy+`    `          
echo   -::://+N/       `---:::sN`     ``...-/      `..::    `---::dy        `.--.```     
echo   -::///+N/       `-:::::sN` ``.-s/-------.  .----:o/   ---::dy      `-:--------/:` 
echo   :://+/+N/       `-:::/:sN`.--::dy`.----:s.  ---::hd   ---:/dy    `/hds+/---::sms. 
echo   :///+/+N/       `-::://sN`---::ds  .--::/h- ---//hd   --://dy  `.+mh:` .---//ym   
echo   :///++oN/       `:::://sN`--::/ds  `-:::/oy`--://hd   -:://dy `-:hd.    .--//ym   
echo   ://+++oN/       `:/:///yN`-:://ds   `:://oN:-::/+hd   -:://dy`-:/hh     -:://ym   
echo   :+++o+oN/       `:///++yN.://++ms    -//+oN:-//++hd   ://++dy.::/sh     -::/+hm   
echo   /+++o+oN/       `/+++++yN.://++ms    `/++sN:://++hd   ://++dy.///+d/    -//++hm   
echo   /++ooosN/       `/++oooyN.//+ooms     :+omm-:++oohd   :++oody.//++ss`   ://+ohm   
echo   /o+ooosN/       `/++oooyN./++oohs     /ohm+ /++oodd   /++oody`/+++oh/   :++oohm   
echo   /ooosssN/       `+oossohN./++oooo/:``-sdms` :+osodd   /+ossdy -++++oo../+++oshm   
echo   /oossssm/       `+oossshN`.ossssssssydmy:   /oossdd   /+ossdy  :+ooooshm+oooshm   
echo `-osossssh/       `+oossshN`  -/osssydmy-   `-ossssyh``:ooossyy   `:oyhmh+/osssyd`  
echo  :yhhhhhhhy/      `+osssydm`     `-/yy-      :yhhhhhho.:yyhhhhyo`   .oh/` `+hhhhhs. 
echo                   `+ssydmh:                                                         
echo                   `oydmh:                                                           
echo                   `+mh:                                                             
echo                     .  
echo                                   ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo                                   º            Noita Save Tool             º
echo                                   º             by HootzMcToke             º
echo                                   º         The time is currently:         º
echo                                   º		%time%		   º
echo                                   º         Please select an option        º
echo                                   ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹
echo                                   º            1. Backup a Save            º
echo                                   º            2. Restore a Save           º
echo                                   º            3. Delete Saves             º
echo                                   º            4. Play Game                º
echo                                   º            5. Quit                     º
echo                                   ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
REM echo on 
REM Remove **ECHO ON** Line before release!!
CHOICE /N /C:12345 >NUL
IF ERRORLEVEL ==5 GOTO quit
IF ERRORLEVEL ==4 GOTO playnoita
IF ERRORLEVEL ==3 GOTO savetool
IF ERRORLEVEL ==2 GOTO restoresave
IF ERRORLEVEL ==1 GOTO backupsave

:backupsave
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\SaveBackup\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\SaveBackup\"
Xcopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\SaveBackup\save00" /s /i /E /q /y
Xcopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save_shared" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\SaveBackup\save_shared" /s /i /E /q /y
ECHO Backup Complete
GOTO startgame

:restoresave
Xcopy /q/y/E "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\SaveBackup\*" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\"
ECHO Backup save restored!
GOTO startgame

:savetool
echo Would you like to (C)Remove Current Save (B)Remove Backup Save (A)ll (M)ain Menu:
CHOICE /N /C ABCM >NUL
IF ERRORLEVEL 4 GOTO welcome
IF ERRORLEVEL 3 GOTO removecurrent
IF ERRORLEVEL 2 GOTO removebackup
IF ERRORLEVEL 1 GOTO removeall
GOTO savetool

:removecurrent
cls
ECHO Removing current save
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save_shared"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00"
ECHO Removal Complete
timeout 1 >NUL
goto savetool

:removebackup
cls
ECHO Removing backup save 
rmdir /q/s ""%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\SaveBackup"
ECHO Removal Complete
timeout 1 >NUL
goto savetool

:removeall
cls
ECHO Removing all saves 
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\SaveBackup"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save_shared"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00"
ECHO All saves removed going to main menu 
timeout 1 >NUL
goto welcome2

:startGame
echo Do you wish to start Noita? [Y/N]:
CHOICE /N /C YNM >NUL
IF ERRORLEVEL 3 GOTO welcome
IF ERRORLEVEL 2 GOTO quit
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
ECHO See you soon!
pause 
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
