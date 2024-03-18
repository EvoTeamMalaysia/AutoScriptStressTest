@echo off

#Script By K3r3
REM Start HWiNFO Sensors
start "" "C:\Path\To\HWiNFO64.exe" /SENSORSONLY

REM Wait for HWiNFO Sensors to initialize (adjust the timeout as needed)
timeout /t 5

REM Start FurMark with P1080 preset benchmark
start "" "C:\Path\To\FurMark.exe" /benchmark /preset:P1080

REM Wait for FurMark to initialize (adjust the timeout as needed)
timeout /t 10

REM Start Prime95 for stress testing
start "" "C:\Path\To\prime95.exe"

echo All tests started successfully.
