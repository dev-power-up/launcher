@ECHO OFF
CLS
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

FOR /f "tokens=1,2 delims=_" %%a IN ("%~n0") DO SET product=%%a&SET command=%%b

IF {%product%}=={}   GOTO :HELP
IF {%command%}=={}   GOTO :HELP
IF {%1}=={/?}        GOTO :HELP
GOTO :START

:HELP
ECHO.
ECHO   ----------------------------------------------------------------------
ECHO   Launcher for InsuranceSuite commands
ECHO.
ECHO   Usage:   File name must be in this format: product_command.cmd 
ECHO.
ECHO   Example: bc_clean.cmd
ECHO   Example: pc_studio.cmd
ECHO   ----------------------------------------------------------------------
ECHO.
GOTO :DONE

:START
CALL action-launcher %product% %command% %3 %4 %5 %6 %7

ECHO.
ECHO.

:DONE