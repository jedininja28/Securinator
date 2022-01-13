@ECHO Off
cd\
cls

:Menu
cls
pause>NUL

REM  Check Dir
Set "RootDir=%~d0\"

ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  Main Menu  }~~~~~~~~~~~~~~~~~
ECHO ~~~{  Scanning Computer Securinator 2.3000  }~~~
ECHO ~~{ theonlysecurinatormesuredinthousandinths }~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~ 1. Create Scans Folder                       ~
ECHO ~ 2. Memory Scans                              ~ 
ECHO ~ 3. IpConfig                                  ~
ECHO ~ 4. Netstat                                   ~
ECHO ~ 5. Tree                                      ~
ECHO ~ 6. Tasklist                                  ~
ECHO ~ 7. Driver Query                              ~
ECHO ~ 8. Schedualed Tasks                          ~
ECHO ~ 9. Attribute Command                         ~
ECHO ~ 10. CPU                                      ~
ECHO ~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ~
ECHO ~ 11. Trace Route                              ~
ECHO ~ 12. DNS Lookup                               ~
ECHO ~ 13. Display System Information               ~
ECHO ~ 14. Make Admin Folder                        ~    
ECHO ~ 15. Command Prompt                           ~
ECHO ~ 16. Power Shell                              ~
ECHO ~ 17. Scans Directory                          ~
ECHO ~ 18. Remove Scans Folder                      ~
ECHO ~ 19.                                          ~
ECHO ~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ~ 
ECHO ~ 20. Exit                                     ~
ECHO ~ 21. Menu                                     ~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

REM Display Date
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mydate=%date%
set mytime=%time%
ECHO Date: %mydate% Time: %mytime%

REM  Detect Admin
verify >nul
net session >nul 2>nul
if not errorlevel 1 echo %ComputerName% : %UserName% : %RootDir% : Administrator Privileges
if     errorlevel 1 echo %ComputerName% : %UserName% : %RootDir% : User Privileges 

REM Display IP Address
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig ^| findstr /IC:"Gateway"') DO echo :Gateway %%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig ^| findstr /IC:"IPv4 Address"') DO echo :IP %%a 

ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

REM MENU SELECTION 
SET INPUT=
SET /P INPUT=

IF /I '%INPUT%'=='1' GOTO  Selection1
IF /I '%INPUT%'=='2' GOTO  Selection2
IF /I '%INPUT%'=='3' GOTO  Selection3
IF /I '%INPUT%'=='4' GOTO  Selection4
IF /I '%INPUT%'=='5' GOTO  Selection5
IF /I '%INPUT%'=='6' GOTO  Selection6
IF /I '%INPUT%'=='7' GOTO  Selection7
IF /I '%INPUT%'=='8' GOTO  Selection8
IF /I '%INPUT%'=='9' GOTO  Selection9
IF /I '%INPUT%'=='10' GOTO  Selection10
IF /I '%INPUT%'=='11' GOTO  Selection11
IF /I '%INPUT%'=='12' GOTO  Selection12
IF /I '%INPUT%'=='13' GOTO  Selection13
IF /I '%INPUT%'=='14' GOTO  Selection14
IF /I '%INPUT%'=='15' GOTO  Selection15
IF /I '%INPUT%'=='16' GOTO  Selection16
IF /I '%INPUT%'=='17' GOTO  Selection17
IF /I '%INPUT%'=='18' GOTO  Selection18
IF /I '%INPUT%'=='19' GOTO  Selection19
IF /I '%INPUT%'=='20' GOTO  Selection20
IF /I '%INPUT%'=='21' GOTO  Menu
IF /I '%INPUT%'=='22' GOTO  Exit

cls

goto :menu
pause>NUL

:Selection1
MD "%RootDir%"\scans
pause
goto :Menu

:Selection2
MEM /d > "%RootDir%"/scans/Mem.txt
pause
goto :Menu

:Selection3
ipconfig /all > "%RootDir%"/scans/Ip.txt
pause
goto :Menu

:Selection4
netstat -a -r -s -t > "%RootDir%"/scans/ns.txt
pause
goto :Menu

:Selection5
echo The Tree command takes a few minutes to complete
Tree /F > "%RootDir%"/scans/tree.txt
pause
goto :Menu

:Selection6
tasklist /SVC > "%RootDir%"/scans/taskl.txt
pause
goto :Menu

:Selection7
driverquery /V > "%RootDir%"/scans/dq.txt
pause
goto :Menu

:Selection8
schtasks /query > "%RootDir%"/scans/scht.txt
pause
goto :Menu

:Selection9
Echo The Attribute Command can take quite some time depending on the file location.
attrib /s > "%RootDir%"/scans/attribute.txt
pause
goto :Menu

:Selection10
wmic cpu > %RootDir%\scans\cpu.txt
goto :Menu

:Selection11
tracert
pause

:Selection12
nslookup 
pause

:Selection13
systeminfo | findstr /c:"Host Name" /c:"Domain" /c:"OS Name" /c:"OS Version" /c:"System Manufacturer" /c:"System Model" /c:"System type" /c:"Total Physical Memory"
pause
goto :Menu

:Selection14
cd "%RootDir%"/scans
md Admin.{ED7BA470-8E54-465E-825C-99712043E01C}
pause
goto :Menu

:Selection15
CMD
goto :Menu

:Selection16
powershell
goto :Menu

:Selection17
CD "%RootDir%"/scans
DIR /A
pause
c:/
Goto :Menu

:Selection18
cd\
RD /s /q scans
pause
goto :Menu

:Selection19

goto :Menu

:Selection20
exit
:Quit
cls

PAUSE>NUL

