@echo off

REM Open in Cursor
start "" /B cursor "Drive:\pathA\pathB\pathC\project_name"

REM Wait a few seconds (give the server time to start)
timeout /t 3 >nul

REM Open browser like below example
start "" /B "http://localhost:3000"
