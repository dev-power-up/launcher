@ECHO OFF
CLS
SETLOCAL ENABLEEXTENSIONS

FOR /f "tokens=1,2 delims=-" %%a IN ("%~n0") DO SET product=%%a&SET command=%%b

IF {%product%}=={}   GOTO :HELP
IF {%command%}=={}   GOTO :HELP
IF {%1}=={/?}        GOTO :HELP
GOTO :START

:HELP
ECHO.
ECHO   ----------------------------------------------------------------------
ECHO   Launcher for InsuranceSuite commands
ECHO.
ECHO   Usage:   File name must be in this format: product-command.cmd 
ECHO.
ECHO   Example: bc-clean.cmd
ECHO   Example: pc-studio.cmd
ECHO   ----------------------------------------------------------------------
ECHO.
GOTO :DONE

:START
CALL quickcenter %product% %command%  -x compile

ECHO.
ECHO.
PAUSE. >nul | ECHO.FINISHED! Press something to continue . . .

:DONE