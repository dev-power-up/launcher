@ECHO OFF
CLS
echo "   ___        _      _     ____           _            
  / _ \ _   _(_) ___| | __/ ___|___ _ __ | |_ ___ _ __ 
 | | | | | | | |/ __| |/ / |   / _ \ '_ \| __/ _ \ '__|
 | |_| | |_| | | (__|   <| |___  __/ | | | |_  __/ |   
  \__\_\\__,_|_|\___|_|\_\\____\___|_| |_|\__\___|_|   "
echo
SETLOCAL ENABLEEXTENSIONS
SET cmdname=%~n0

IF {%1}=={}   GOTO :HELP
IF {%2}=={}   GOTO :HELP
IF {%1}=={/?} GOTO :HELP
GOTO :START

:HELP
ECHO.
ECHO   ------------------------------------------------------
ECHO   Combined launcher for InsuranceSuite commands
ECHO.
ECHO   Usage:   %~n0 product command 
ECHO.
ECHO   Example: %~n0 bc studio
ECHO   Example: %~n0 pc clean
ECHO   ------------------------------------------------------
ECHO.
GOTO :DONE

:START
ECHO.
ECHO   ------------------------------------------------------
ECHO   Running %1 %2 . . . 
ECHO   ------------------------------------------------------
ECHO.
FOR /F "tokens=1,2 delims==" %%G IN (launch.properties) DO (set %%G=%%H)  

SET product=%1
IF /I "%product%"=="bc" (CD %bc%)
IF /I "%product%"=="cc" (CD %cc%)
IF /I "%product%"=="pc" (CD %pc%)
IF /I "%product%"=="cm" (CD %cm%)


gwb %2 %3 %4 %5 %6 %7

:DONE
ENDLOCAL