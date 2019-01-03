@echo off
cd C:\Users\Administrator\bamboo-agent-home\xml-data\build-dir\TJB-TJB-JOB2
del /s *.xml
set source=C:\Automation\Login_Logout\Execute_Suit\Output
set dest=C:\Users\Administrator\bamboo-agent-home\xml-data\build-dir\TJB-TJB-JOB2
pushd "%source%"
for /f "tokens=*" %%G in ('dir *.xml /b /a-d /od') do SET newest=%%G

copy "%newest%" "%dest%"
popd
