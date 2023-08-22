@echo off
tasklist /fi "imagename ne explorer.exe" /fi "imagename ne cmd.exe" /fi "status eq running" /v /fo csv | findstr /v "Image Name,explorer.exe,cmd.exe" > %temp%\processes.csv
for /f "skip=1 tokens=2 delims=," %%A in (%temp%\processes.csv) do (
    set process=%%~A
    setlocal enabledelayedexpansion
    tasklist /fi "pid eq !process!" /v /fo csv | findstr /v "Image Name,explorer.exe,cmd.exe" | findstr /i /c:"!process!" > nul
    if not errorlevel 1 (
        taskkill /f /pid !process!
    )
    endlocal
)
del %temp%\processes.csv