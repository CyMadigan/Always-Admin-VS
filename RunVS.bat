REM By Tom Chantler - https://tomssl.com
echo off
set /p _VSFileToOpen=<"%ProgramData%\TomSSL\VSFileToOpen.txt"
CALL :dequote _VSFileToOpen
if "%_VSFileToOpen%" == "NONE" goto noparams
goto params
:noparams
start /b "" "%ProgramFiles(x86)%\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe"
Goto :eof
:params
start /b "" "%ProgramFiles(x86)%\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe" "%_VSFileToOpen%"
Goto :eof
:DeQuote
for /f "delims=" %%A in ('echo %%%1%%') do set %1=%%~A
Goto :eof