:START
REM -- initialize the base variables --
ECHO off
MODE con:cols=80 lines=40
SETLOCAL EnableDelayedExpansion
SETLOCAL enableextensions
:MENUVAR
REM -- initialize the menu variables and window title -- 
SET BOXTOP=		…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª
SET TITLE=		∫   Noita Tool by HootzMcToke Version 3   ∫
SET BUILD=		∫      Build time %~t0     ∫
SET MAIN=		∫               [1;4mMain Menu[0m                 ∫
SET BACKUP=		∫          [1;4mNoita Save Backup Tool[0m         ∫
SET RESTORE=		∫          [1;4mNoita Save Restore Tool[0m        ∫
SET DELETE=		∫          [1;4mNoita Save Deletion Tool[0m       ∫
SET SEED=		∫             [1;4mNoita Seed Tools[0m            ∫
SET OPTIONS=		∫                [1;4mTool Options[0m             ∫
SET SOON=		∫              Available Soon             ∫
SET SELECT=		∫          Select an option below         ∫
SET BOXMID=		ÃÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ
SET MAINBOT=		∫(M)ain menu (P)lay Game  (O)ptions (E)xit∫
SET BOXBOTTOM=		»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº
SET MM=^
                ∫    1. Backup              2. Restore    ∫                     ^
                ∫    3. Delete              4. Tools      ∫
SET BKM=^
                ∫    1. Backup #1        2. Backup #2     ∫                     ^
                ∫    3. Backup #3        4. Overwrite All ∫
SET RESTM=^
                ∫    1. Restore #1        2.Restore #2    ∫                     ^
                ∫              3. Restore #3              ∫
SET DELM=^
                ∫     1. Delete #1       2. Delete #2     ∫                     ^
                ∫     3. Delete #3       4. Delete All    ∫
SET SEEDM=^
                ∫      1. Option 1       2. Option 2      ∫                     ^
                ∫      3. Option 3       4. Option 4      ∫
SET OPTIONSM=^
                ∫      1. Option 1       2. Option 2      ∫                     ^
                ∫      3. Option 3       4. Option 4      ∫
SET LOGO=^

 [31m    ∞≤     ≤≤∞            [33m                [31m       [33m               [31m               ^
 [31m   ≤≤≤≤≤≤  ≤≤≤≤≤≤         [33m                [31m       [33m               [31m               ^
 [31m ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤       [33m                [31m  ≤≤≤≤ [33m      ≤≤≤      [31m               ^
 [31m ≤≤≤≤≤≤≤≤≤≤  ≤≤≤≤≤≤≤≤     [33m                [31m ≤≤≤≤≤ [33m    ≤≤≤≤≤      [31m               ^
 [31m ≤≤≤≤≤≤≤≤      ≤≤≤≤≤≤≤≤   [33m                [31m   ≤≤≤≤[33m   ≤≤≤≤≤≤      [31m               ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤≤[33m                [31m    ≤[33m     ≤≤≤≤≤≤      [31m               ^
 [31m ≤≤≤≤≤≤≤≤         ≤≤≤≤≤≤≤∞[33m                [31m    ∞ [33m≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤±[31m              ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m         ≤      [31m   ≤  [33m≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ [31m      ≤        ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m     ≤≤≤≤≤≤     [31m ≤≤≤≤  [33m   ≤≤≤≤≤≤  [31m       ≤≤≤≤≤≤≤     ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤≤≤≤≤≤≤≤   [31m≤≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m     ≤≤≤≤≤≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤ ≤≤≤≤≤≤≤≤ [31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m   ≤≤≤≤  ≤≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤   ≤≤≤≤≤≤ [31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m  ≤≤≤≤    ≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤    ≤≤≤≤≤≤[31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m ≤≤≤≤     ≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤    ≤≤≤≤≤≤[31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m≤≤≤≤≤     ≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤    ≤≤≤≤≤≤[31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m≤≤≤≤≤     ≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤     ≤≤≤≤≤[31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m≤≤≤≤≤≤    ≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤     ≤≤≤≤ [31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m≤≤≤≤≤≤≤   ≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤≤≤  ≤≤≤≤≤ [31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m ≤≤≤≤≤≤  ≤≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m∞≤≤≤≤≤≤≤≤≤≤≤±   [31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m  ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m   ≤≤≤≤≤≤≤≤     [31m≤≤≤≤≤≤≤[33m  ≤≤≤≤≤≤≤  [31m    ≤≤≤≤≤ ≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤≤≤      ≤≤≤≤≤≤≤≤ [33m       ≤≤       [31m≤≤≤≤≤≤≤≤[33m ≤≤≤≤≤≤≤≤ [31m     ≤     ≤≤≤≤≤≤  ^
 [31m               ≤≤≤≤≤≤     [33m                [31m       [33m            [31m
SET LINEBREAK=[43m‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹[0m
TITLE %TITLE%
REM -- End of the menu variables and window title
:MAINMENU
REM -- Main Menu Screen
cls
ECHO !LOGO!
ECHO.
ECHO !LINEBREAK!
ECHO.
ECHO !BOXTOP!
ECHO !TITLE!
ECHO !BUILD!
ECHO !MAIN!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !MM!
ECHO !BOXMID!
ECHO !MAINBOT!
ECHO !BOXBOTTOM!
PAUSE
 
:BACKUP
REM -- Backup Menu Screen
cls
ECHO !LOGO!
ECHO.
ECHO !LINEBREAK!
ECHO.
ECHO !BOXTOP!
ECHO !TITLE!
ECHO !BUILD!
ECHO !BACKUP!
ECHO !SELECT!
ECHO !BOXMID!
ECHo !BKM!
ECHO !BOXMID!
ECHO !MAINBOT!
ECHO !BOXBOTTOM!
PAUSE
 
:RESTORE
REM -- RESTORE Menu Screen
cls 
ECHO !LOGO!
ECHO.
ECHO !LINEBREAK!
ECHO.
ECHO !BOXTOP!
ECHO !TITLE!
ECHO !BUILD!
ECHO !RESTORE!
ECHO !SELECT!
ECHO !BOXMID!
ECHo !RESTM!
ECHO !BOXMID!
ECHO !MAINBOT!
ECHO !BOXBOTTOM!
PAUSE

:DELETE
REM -- Deletion Tool Sceen
cls
ECHO !LOGO!
ECHO.
ECHO !LINEBREAK!
ECHO.
ECHO !BOXTOP!
ECHO !TITLE!
ECHO !BUILD!
ECHO !DELETE!
ECHO !SELECT!
ECHO !BOXMID!
ECHo !DELM!
ECHO !BOXMID!
ECHO !MAINBOT!
ECHO !BOXBOTTOM!
PAUSE

:SEED
REM -- Seed Screen
cls
ECHO !LOGO!
ECHO.
ECHO !LINEBREAK!
ECHO.
ECHO !BOXTOP!
ECHO !TITLE!
ECHO !BUILD!
ECHO !SEED!
ECHO !SOON!
ECHO !BOXMID!
ECHO !SEEDM!
ECHO !BOXMID!
ECHO !MAINBOT!
ECHO !BOXBOTTOM!
PAUSE
 
:OPTIONS
REM -- Options Screen
cls
ECHO !LOGO!
ECHO.
ECHO !LINEBREAK!
ECHO.
ECHO !BOXTOP!
ECHO !TITLE!
ECHO !BUILD!
ECHO !OPTIONS!
ECHO !SOON!
ECHO !BOXMID!
ECHo !OPTIONSM!
ECHO !BOXMID!
ECHO !MAINBOT!
ECHO !BOXBOTTOM!
PAUSE