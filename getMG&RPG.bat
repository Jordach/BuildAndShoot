@echo off
:directorylist
cls
COLOR 02
ECHO =============== Choose your Directory ================
ECHO -------------------------------------
ECHO Choose if you installed Steam to the default directory (C:\Program Files\Steam)
ECHO or if you need to type your own directory (EX. D:\Steam)
ECHO Type A for default directory
ECHO Type B to enter your own directory
ECHO -------------------------------------
ECHO Type 0 to exit.
ECHO -------------------------------------
ECHO.
set /p TYPE=
IF /I '%TYPE%'=='A' goto :default
IF /I '%TYPE%'=='B' goto :not
IF /I '%TYPE%'=='0' exit
cls
COLOR 04
ECHO Invalid option. Try again
goto :directorylist
:not
cls
COLOR 03
ECHO Please enter your Steam installation directory.
ECHO EX: D:\Steam
set /p INPUT=
ECHO Press any key to start.
pause >nul
mkdir models
copy "%INPUT%\steamapps\common\aceofspades\kv6\mg*.kv6" "%CD%\models"
copy "%INPUT%\steamapps\common\aceofspades\kv6\rpg.kv6" "%CD%\models"
pause
goto :error
:default
cls
COLOR 03
ECHO Press any key to start.
pause >nul
mkdir models
copy "C:\Program Files\Steam\steamapps\common\aceofspades\kv6\mg*.kv6" "%CD%\models"
copy "C:\Program Files\Steam\steamapps\common\aceofspades\kv6\rpg.kv6" "%CD%\models"
pause
goto :error
:error
cls
ECHO If you did not see all the files copy, check the models folder. If it still isn't there, you may have entered the wrong information. Try again.
pause
goto :directorylist