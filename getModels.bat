@echo off
:directorylist
cls
COLOR 02
ECHO =============== Choose your Directory ================
ECHO -------------------------------------
ECHO Choose if you installed to default directory (C:\Ace of Spades)
ECHO or if you need to type your own directory (EX. C:\Program Files\Ace of Spades)
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
ECHO Please enter your Ace of Spades installation directory.
ECHO EX: C:\Program Files\Ace of Spades
set /p INPUT=
ECHO Press any key to start.
pause >nul
copy "%INPUT%\kv6\*.kv6" "%CD%\models"
pause
goto :error
:default
cls
COLOR 03
ECHO Press any key to start.
pause >nul
copy "C:\Ace of Spades\kv6\*.kv6" "%CD%\models"
pause
goto :error
:error
cls
ECHO If you did not see all the files copy, check the models folder. If it still isn't there, you may have entered the wrong information. Try again.
pause
goto :directorylist