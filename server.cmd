ECHO OFF
cls
ECHO XCast Server
SET /p preReqId=<%~dp0/reqId.txt
:loop
SET /p content=<%~dp0/content.txt
SET /p reqId=<%~dp0/reqId.txt
if not "%reqId%" == "%preReqId%" (
SET /p preReqId=<%~dp0/reqId.txt
ECHO.
ECHO New Request!
ECHO Request ID: %reqId%
ECHO Content: %content%
TSKILL chrome
START "" chrome.exe -kiosk -fullscreen --app=%content%
)
goto :loop