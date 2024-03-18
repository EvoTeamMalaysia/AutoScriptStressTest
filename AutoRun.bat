@echo off

#Script By EvoTeamMalaysia

REM Start HWiNFO Sensors
start "" "F:\Test Copy\HWiNFO64.exe" /SENSORSONLY

REM Wait for HWiNFO Sensors to initialize (adjust the timeout as needed)
timeout /t 5

REM Start FurMark with P1080 preset benchmark
start "" "F:\Test Copy\FurMark_win64\FurMark.exe" /benchmark /preset:P1080

REM Wait for FurMark to initialize (adjust the timeout as needed)
timeout /t 10

REM Start Prime95 for stress testing
start "" "F:\Test Copy\p95v308b17.win64\prime95.exe"

echo All tests started successfully.
