REM cd c:\Guidewire\QuickCenter\launcher\bin

@ECHO OFF
CLS
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

:VARIABLES
SET cmdname=%~n0
SET parent=%~dp0

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

set GW_PRODUCT=%1

REM Retrieve all keys from local.properties and make them variables
FOR /F "tokens=1,2 delims==" %%G IN (..\local.properties) DO (set %%G=%%H)  

REM Get the product directory from local.properties
FOR /F "tokens=1,2 delims==" %%G IN (..\local.properties) DO (IF /I %GW_PRODUCT%.path==%%G (set PRODUCT_DIR=%%H)) 

echo Launching %GW_PRODUCT% %2
echo ======================================================================

IF NOT EXIST %PRODUCT_DIR% (
    ECHO %~n0: folder not found - %PRODUCT_DIR% >&2
)

SET PRODUCT_PROPERTIES=%PRODUCT_DIR%modules\configuration\product.properties

REM Get all of the Java properties (java18, java11, java17)
FOR /F "tokens=1,2 delims==" %%G IN (%PRODUCT_PROPERTIES%) DO (set %%G=%%H)

REM Set the JDK version and launcher based on the product
SET JAVA_DIR=%java18.path%
SET LAUNCHER=gwb.bat

IF %product.majorversion%==10 (  
    IF %product.patchversion% == 2 (
        SET JAVA_DIR=%java11.path%
    )
)
IF %product.majorversion% == 8 (
    set JAVA_DIR=%java11.path%
    set LAUNCHER=bin\gw%product.code%.bat
)

SET JAVA_HOME=%JAVA_DIR%
SET Path=%JAVA_HOME%\bin;%Path%

REM LAUNCH!
cd %PRODUCT_DIR%
%LAUNCHER% %2 %3 %4 %5 %6 %7

:DONE
ENDLOCAL