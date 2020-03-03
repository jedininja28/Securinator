@ECHO OFF
SETlocal DisableDelayedExpansion
SETlocal EnableExtensions
::M-x toggle-truncate-lines
::SET mode con: cols=200 lines=60

:MENU
@ECHO OFF
CLS
BREAK
TITLE The Great Scanning Computer Securinator 2.3000
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  THE GREAT  }~~~~~~~~~~~~~~~~~
ECHO ~~~{  Scanning Computer Securinator 2.3000  }~~~
ECHO ~~~~~~~~~~~{ ~ The Great Main Menu  ~ }~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~ 1. The Great Scans Menu                      ~
ECHO ~ 2. The Great Recovery Screen                 ~
ECHO ~ 3. The Great Ip Changer'                     ~
ECHO ~ 10. Make Admin Folder                        ~
ECHO ~ 11. Command Prompt                           ~
ECHO ~ 12. Powershell                               ~
ECHO ~ 13. Internet Explorer                        ~
ECHO ~ 21. Display System Information               ~
ECHO ~ 23. Display Ip Information                   ~
ECHO ~ 24. Drive Information                        ~
ECHO ~ 25. The Great DNS List                       ~
ECHO ~ 95. Credits                                  ~
ECHO ~ 96. The Great Help File                      ~
ECHO ~ 97. Restart                                  ~
ECHO ~ 98. Shutdown                                 ~
ECHO ~ 99. Exit                                     ~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

:: Get Root Drive
SET "RootDir=%~d0\"

:: Display Date
Break
for /F "tokens=2" %%i in ('date /t') do SET mydate=%%i
for /F "tokens=2" %%i in ('time /t') do SET mydate=%%i
SET mydate=%date%
SET mytime=%time%
ECHO  Date: %mydate% Time: %mytime%

:: Detect Admin
BREAK
verIFy >m
net session >NUL 2>NUL
IF NOT errorlevel 1 ECHO  %WinDir% : %RootDir% : %ComputerName% : %UserName% : Administrator Privileges
IF     errorlevel 1 ECHO  %WinDir% : %RootDir% : %ComputerName% : %UserName% : User Privileges

:: Display IP Address
BREAK
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"Default Gateway"') DO ECHO  Default Gateway:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"Subnet Mask"') DO ECHO  Subnet Mask:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"IPv4 Address"') DO ECHO  IP:%%a 
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"DHCP Server"') DO ECHO  DHCP Server:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"DNS Servers"') DO ECHO  DNS Server:%%a 
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SET INPUT=
SET /P INPUT=
::IF "%INPUT%"==" " GOTO :menu


:: Need to define acceptable inputs 
:: IF /I '%INPUT%'==(IF ERRORLEVEL 1 GOTO menu)

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
IF /I '%INPUT%'=='21' GOTO  Selection21
IF /I '%INPUT%'=='22' GOTO  Selection22
IF /I '%INPUT%'=='23' GOTO  Selection23
IF /I '%INPUT%'=='24' GOTO  Selection24
IF /I '%INPUT%'=='18' GOTO  Selection25
IF /I '%INPUT%'=='19' GOTO  Selection26
IF /I '%INPUT%'=='20' GOTO  Selection27
IF /I '%INPUT%'=='21' GOTO  Selection28
IF /I '%INPUT%'=='22' GOTO  Selection29
IF /I '%INPUT%'=='23' GOTO  Selection30
IF /I '%INPUT%'=='25' GOTO  DNSList

IF /I '%INPUT%'=='95' GOTO  Credits
IF /I '%INPUT%'=='96' GOTO  Help
IF /I '%INPUT%'=='97' GOTO  Restart
IF /I '%INPUT%'=='98' GOTO  Shutdown
IF /I '%INPUT%'=='99' GOTO  Exit

IF /I '%INPUT%'=='usbs' GOTO  usbs
IF /I '%INPUT%'=='cc' GOTO  CC
IF /I '%INPUT%'=='one' GOTO  one

GOTO :menu

PAUSE>NUL

:Credits
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO The Great Credits:
:: Securinator By jedininja, 
ECHO 01010100 01101000 01100101 00100000 01000111 01110010 01100101 01100001 01110100 00100000 01010011 01100011 01100001 01101110 01101110 01101001 01101110 01100111 00100000 01000011 01101111 01101101 01110000 01110101 01110100 01100101 01110010 00100000 01010011 01100101 01100011 01110101 01110010 01101001 01101110 01100001 01110100 01101111 01110010 00100000 00110010 00101110 00110011 00110000 00110000 00110000 00100000 01100010 01111001 00111010 00100000 01001010 01100101 01100100 01101001 01101110 01101001 01101110 01101010 01100001 00101100 00100000
:: IpChanger By Pumkinut Ars Praefectus, 
ECHO 01001001 01110000 01000011 01101000 01100001 01101110 01100111 01100101 01110010 00100000 01000010 01111001 00100000 01010000 01110101 01101101 01101011 01101001 01101110 01110101 01110100 00100000 01000001 01110010 01110011 00100000 01010000 01110010 01100001 01100101 01100110 01100101 01100011 01110100 01110101 01110011 00101100 00100000
:: Lots of Help From https://www.stackoverflow.com,  
ECHO 01001100 01101111 01110100 01110011 00100000 01101111 01100110 00100000 01001000 01100101 01101100 01110000 00100000 01000110 01110010 01101111 01101101 00100000 01101000 01110100 01110100 01110000 01110011 00111010 00101111 00101111 01110111 01110111 01110111 00101110 01110011 01110100 01100001 01100011 01101011 01101111 01110110 01100101 01110010 01100110 01101100 01101111 01110111 00101110 01100011 01101111 01101101 00101100 00100000
:: Lots of Help From https://www.dostips.com,  
ECHO 01001100 01101111 01110100 01110011 00100000 01101111 01100110 00100000 01001000 01100101 01101100 01110000 00100000 01000110 01110010 01101111 01101101 00100000 01101000 01110100 01110100 01110000 01110011 00111010 00101111 00101111 01110111 01110111 01110111 00101110 01100100 01101111 01110011 01110100 01101001 01110000 01110011 00101110 01100011 01101111 01101101 00101100 00100000
:: I use 216.239.38.120 a lot.
ECHO 01001001 00100000 01110101 01110011 01100101 00100000 00110010 00110001 00110110 00101110 00110010 00110011 00111001 00101110 00110011 00111000 00101110 00110001 00110010 00110000 00100000 01100001 00100000 01101100 01101111 01110100 00101100 00100000
:: https://www.rapidtables.com/convert/number/binary-to-ascii.html
ECHO 01101000 01110100 01110100 01110000 01110011 00111010 00101111 00101111 01110111 01110111 01110111 00101110 01110010 01100001 01110000 01101001 01100100 01110100 01100001 01100010 01101100 01100101 01110011 00101110 01100011 01101111 01101101 00101111 01100011 01101111 01101110 01110110 01100101 01110010 01110100 00101111 01101110 01110101 01101101 01100010 01100101 01110010 00101111 01100001 01110011 01100011 01101001 01101001 00101101 01110100 01101111 00101101 01100010 01101001 01101110 01100001 01110010 01111001 00101110 01101000 01110100 01101101 01101100
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE 
GOTO :menu

:Selection1
:scans
cls
TITLE The Great Scans Menu
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  THE GREAT  }~~~~~~~~~~~~~~~~~
ECHO ~~~{  Scanning Computer Securinator 2.3000  }~~~
ECHO ~~~~~~~~~~~{ ~ The Great Scans Menu  ~ }~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~  1. Create Scans Folder                      ~
ECHO ~  2. Memory Chip                              ~
ECHO ~  3. Ip Configuration                         ~
ECHO ~  4. Network Statistics                       ~
ECHO ~  5. File Tree                                ~
ECHO ~  6. Tasklist                                 ~
ECHO ~  7. Driver Query                             ~
ECHO ~  8. Scheduled Tasks                          ~
ECHO ~  9. Attribute Command                        ~
ECHO ~ 10. CPU Chip                                 ~
ECHO ~ 11. Port Scan                                ~
ECHO ~ 12. Bios Chip                                ~
ECHO ~ 13. Scans Directory                          ~
ECHO ~ 14. Delete Scans Directory                   ~
ECHO ~ 15. Menu                                     ~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SET INPUT=
SET /P INPUT=
::IF NOT DEFINED name GOTO :scans
::SET the exseptable input
IF "%INPUT%"==" " GOTO :scans

IF /I '%INPUT%'=='1' GOTO  :Sm1
IF /I '%INPUT%'=='2' GOTO  :Sm2
IF /I '%INPUT%'=='3' GOTO  :Sm3
IF /I '%INPUT%'=='4' GOTO  :Sm4
IF /I '%INPUT%'=='5' GOTO  :Sm5
IF /I '%INPUT%'=='6' GOTO  :Sm6
IF /I '%INPUT%'=='7' GOTO  :Sm7
IF /I '%INPUT%'=='8' GOTO  :Sm8
IF /I '%INPUT%'=='9' GOTO  :Sm9
IF /I '%INPUT%'=='10' GOTO  :Sm10
IF /I '%INPUT%'=='11' GOTO  :Sm11
IF /I '%INPUT%'=='12' GOTO  :Sm12
IF /I '%INPUT%'=='13' GOTO  :Sm13
IF /I '%INPUT%'=='14' GOTO  :Sm14
IF /I '%INPUT%'=='15' GOTO  :Menu
GOTO :scans
PAUSE>NUL

:Sm1
MD %RootDir%scans
PAUSE
GOTO :scans

:Sm2
:: WIN10
:: WMIC MEMORYCHIP > %RootDir%scans\mm.txt
:: IF %errorlevel%==0 Type %RootDir%scans\mm.txt
:: IF %errorlevel%==1 WMIC MEMORYCHIP > %RootDir%scans\mm.txt

:: WMIC MEMORYCHIP > "%RootDir%"/scans/mm%date:~-4,4%%date:~-7,2%%date:~0,2%.txt

:: WIN7 
:: MEM /debug > "%RootDir%"/scans/mm.txt
:: MEM /debug > "%RootDir%"/scans/mm%date:~-4,4%%date:~-7,2%%date:~0,2%.txt

:: WIN8
:: WIN Vista
:: WINxp
:: Win2000
:: WIN3
PAUSE 
GOTO :scans

:Sm3
:: ipconfig /allcompartments /all > "%RootDir%"/scans/ip.txt
:: IF %errorlevel%==0 Type %RootDir%scans\ip.txt
:: IF %errorlevel%==1 ipconfig /allcompartments /all > %RootDir%scans\ip.txt

FIND "ip" "%RootDir%"scans\ip.txt 
IF ERRORLEVEL = 1 Ipconfig /all > "%RootDir%"scans\ip.txt 
TYPE "%RootDir%"scans\ip.txt 


:: Type %RootDir%scans\ip.txt else ipconfig /allcompartments /all > "%RootDir%"/scans/ip.txt
:: ipconfig /allcompartments /all > "%RootDir%"/scans/ip%date:~-4,4%%date:~-7,2%%date:~0,2%.txt
PAUSE
GOTO :scans

:Sm4
netstat -a -r -s -t > %RootDir%scans\ns.txt
IF %errorlevel%==0 Type %RootDir%scans\ns.txt
IF %errorlevel%==1 netstat -a -r -s -t > %RootDir%scans\ns.txt

::netstat -a -r -s -t > %RootDir%scans/ns%date:~-4,4%%date:~-7,2%%date:~0,2%.txt
PAUSE
GOTO :scans

:Sm5
Tree /F > "%RootDir%"/scans/tr.txt
IF %errorlevel%==0 Type %RootDir%scans\tr.txt
IF %errorlevel%==1 Tree /F > %RootDir%scans\tr.txt

:: Tree /F > "%RootDir%"/scans/tr%date:~-4,4%%date:~-7,2%%date:~0,2%.txt
PAUSE
GOTO :scans

:Sm6
tasklist /SVC > %RootDir%scans\tl.txt
IF %errorlevel%==0 Type %RootDir%scans\tl.txt
IF %errorlevel%==1 tasklist /SVC > %RootDir%scans\tl.txt

:: tasklist /SVC > "%RootDir%"/scans/tl.txt
:: tasklist /SVC > "%RootDir%"/scans/tl%date:~-4,4%%date:~-7,2%%date:~0,2%.txt
PAUSE
GOTO :scans

:Sm7
driverquery /V > %RootDir%scans\dq.txt
IF %errorlevel%==0 Type %RootDir%scans\dq.txt
IF %errorlevel%==1 driverquery /V > %RootDir%scans\dq.txt

:: driverquery /V > "%RootDir%"/scans/dq%date:~-4,4%%date:~-7,2%%date:~0,2%.txt
PAUSE
GOTO :scans

:Sm8
schtasks /query > %RootDir%scans\st.txt
IF %errorlevel%==0 Type %RootDir%scans\st.txt
IF %errorlevel%==1 schtasks /query > %RootDir%scans\st.txt

:: schtasks /query > "%RootDir%"/scans/st%date:~-4,4%%date:~-7,2%%date:~0,2%.txt
PAUSE
GOTO :scans

:Sm9
attrib /s > %RootDir%scans\at.txt
IF %errorlevel%==0 Type %RootDir%scans\at.txt
IF %errorlevel%==1 attrib /s > %RootDir%scans\at.txt

:: attrib /s > "%RootDir%"/scans/at%date:~-4,4%%date:~-7,2%%date:~0,2%.txt
PAUSE
GOTO :scans

:Sm10
wmic cpu > %RootDir%scans\cu.txt
IF %errorlevel%==0 Type %RootDir%scans\cu.txt
IF %errorlevel%==1 wmic cpu > %RootDir%scans\cu.txt

:: wmic cpu > %RootDir%scans\cu%date:~-4,4%%date:~-7,2%%date:~0,2%.txt
PAUSE
GOTO :scans

:Sm11
wmic port > %RootDir%scans\pt.txt
IF %errorlevel%==0 Type %RootDir%scans\pt.txt
IF %errorlevel%==1 wmic port > %RootDir%scans\pt.txt

:: wmic port > %RootDir%scans\pt%date:~-4,4%%date:~-7,2%%date:~0,2%.txt

::Port Scan
:: wmic port get Endingaddress, Startingaddress
:: wmic port get Endingaddress, Startingaddress > %RootDir%scans\pt%date:~-4,4%%date:~-7,2%%date:~0,2%.txt
:: wmic port get Endingaddress, Startingaddress > E:scans\pt%date:~-4,4%%date:~-7,2%%date:~0,2%.txt
PAUSE
GOTO :scans

:Sm12
wmic bios > %RootDir%scans\bs.txt
IF %errorlevel%==0 Type %RootDir%scans\bs.txt
IF %errorlevel%==1 wmic bios > %RootDir%scans\bs.txt

:: wmic bios > %RootDir%scans\bs%date:~-4,4%%date:~-7,2%%date:~0,2%.txt
PAUSE
GOTO :scans

:Sm13
CD %RootDir%scans
DIR /A
PAUSE
c:\
GOTO :scans

:Sm14
CD "%RootDir%"
RD /S /Q scans
PAUSE
GOTO :scans
      
GOTO :scans
PAUSE>NUL	  

:Selection2
:rcvr
cls
TITLE the Great Recovery Screen
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  THE GREAT  }~~~~~~~~~~~~~~~~~~
ECHO ~~~~{  Scanning Computer Securinator 2.3000  }~~~
ECHO ~~~~~~~~{ ~ The Great Recovery Screen ~ }~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~ 1. Check Disk                                 ~
ECHO ~ 2. Windows Memory Diagnostic                  ~
ECHO ~ 3. File Shredder                            ? ~
ECHO ~ 4. Recover                                    ~
ECHO ~ 5. Format                                     ~
ECHO ~ 6. Hardware Manager                         ? ~
ECHO ~ 7. Partition                                  ~
ECHO ~ 8. Check NTFS need find dir                 ? ~
ECHO ~ 9. Bitlocker
ECHO ~ 10. Defrag
ECHO ~ 11. Main Menu                                ? ~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SET INPUT=
SET /P INPUT=

IF /I '%INPUT%'=='1' GOTO  dc1
IF /I '%INPUT%'=='2' GOTO  dc2
IF /I '%INPUT%'=='3' GOTO  dc3
IF /I '%INPUT%'=='4' GOTO  dc4
IF /I '%INPUT%'=='5' GOTO  dc5
IF /I '%INPUT%'=='6' GOTO  dc6
IF /I '%INPUT%'=='7' GOTO  dc7
IF /I '%INPUT%'=='8' GOTO  dc8
IF /I '%INPUT%'=='7' GOTO  dc9
IF /I '%INPUT%'=='8' GOTO  dc10
IF /I '%INPUT%'=='11' GOTO  :MENU



GOTO :rcvr
PAUSE>NUL

GOTO :rcvr
:dc1
chkdsk
PAUSE
GOTO :rcvr

:dc2
%windir%\system32\MdSched.exe
PAUSE
GOTO :rcvr

:dc3
PAUSE
GOTO :rcvr

:dc4
recover %RootDir%
::Does NOT appil to FAT32 Drives
PAUSE
GOTO :rcvr

:dc5
format
::Needs more information
PAUSE
GOTO :rcvr

:dc6
Msinfo32
PAUSE
GOTO :rcvr

:dc7
diskpart
PAUSE
GOTO :rcvr

:dc8
::Needs Drive Name
chkntfs
PAUSE
GOTO :rcvr

:dc9
BitLockerWizard
cls
GOTO :rcvr

:dc10
::REquires Drive
defrag /U
cls
GOTO :rcvr

:dc11
cls
GOTO :menu

:Selection3
:again

cls
TITLE the Great Ip Changer
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~{  THE GREAT  }~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~{  Scanning Computer Securinator 2.3000  }~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~{ ~ The Great IP Changer ~ }~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~  1. Change stack to static IP address, mask, and DNS Server(s) ~
ECHO ~  2. Change stack to DHCP network configuration                 ~
ECHO ~  3. Change stack to SB200 IP configuration                     ~
ECHO ~  4. Change stack to SB600B IP configuration                    ~
ECHO ~  5. Change stack to T_U configuration                          ~
ECHO ~  6. Change stack to T_P configuration                          ~
ECHO ~  7. Main Menu                                                  ~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SET /p choice=
IF /I [%choice%]==[1] GOTO Static
IF /I [%choice%]==[2] GOTO DHCP
IF /I [%choice%]==[3] GOTO SB200
IF /I [%choice%]==[4] GOTO SB600
IF /I [%choice%]==[5] GOTO T_U
IF /I [%choice%]==[6] GOTO T_P
IF /I [%choice%]==[7] GOTO menu
CLS
ECHO INCORRECT CHOICE CHOOSE AGAIN
GOTO again
PAUSE>NUL
ECHO.

:Static
ECHO.
SET /P Addy=IP Address:
SET /P Sub_Mask=Subnet Mask:
SET /P GW=Gateway IP Address:
SET /P DNS_1=Primary DNS Server:
SET /P DNS_2=Secondary DNS Server:

netsh interface ip SET address "Local Area Connection" static %Addy% %Sub_Mask% %GW% 1
netsh interface ip delete dns "Local Area Connection" all

IF NOT [%DNS_1%]==[] netsh interface ip SET dns "Local Area Connection" static %DNS_1%
IF NOT [%DNS_2%]==[] netsh interface ip add dns "Local Area Connection" %DNS_2% index=2
ECHO.
netsh interface ip show config
ECHO.
PAUSE
GOTO again

:DHCP
ECHO.
@ECHO SETting up Local Area Connection for DHCP Configuration
netsh interface ip SET address "Local Area Connection" source=dhcp
netsh interface ip SET dns "Local Area Connection" source=dhcp
ECHO.
ipconfig
ECHO.
PAUSE
GOTO again

:SB200
ECHO.
@ECHO 10.10.241.205
netsh interface ip delete dns "Local Area Connection" all
netsh interface ip SET address "Local Area Connection" static 10.10.241.205 255.255.255.0 10.10.241.201 1
netsh interface ip show config
ECHO.
PAUSE
GOTO again

:SB600
ECHO.
@ECHO 192.168.0.102
netsh interface ip delete dns "Local Area Connection" all
netsh interface ip SET address "Local Area Connection" static 192.168.0.102 255.255.255.0 192.168.0.1 1
netsh interface ip show config
ECHO.
PAUSE
GOTO again

:T_U
ECHO.
@ECHO 172.16.233.215
netsh interface ip delete dns "Local Area Connection" all
netsh interface ip SET address "Local Area Connection" static 172.16.233.215 255.255.255.0 172.16.233.214 1
netsh interface ip show config
ECHO.
PAUSE
GOTO again

:T_P
ECHO.
@ECHO 10.10.10.10
netsh interface ip delete dns "Local Area Connection" all
netsh interface ip SET address "Local Area Connection" static 10.10.10.10 255.255.255.0 10.10.10.1 1
netsh interface ip show config
ECHO.
PAUSE
GOTO again

:Selection4
PAUSE
GOTO :menu

:Selection5
PAUSE
GOTO :menu

:Selection6
PAUSE
GOTO :menu

:Selection7
PAUSE
GOTO :menu

:Selection8
PAUSE
GOTO :menu

:Selection9
PAUSE
GOTO :menu

:Selection9
PAUSE
GOTO :menu

:Selection10
PAUSE
GOTO :menu

:Selection11
CMD
GOTO :menu

:Selection12
PowerShell
GOTO :menu

:Selection13

PAUSE
GOTO :menu

:Selection14
PAUSE
GOTO :menu

:Selection15
PAUSE
GOTO :menu

:Selection16
cd "%RootDir%"/scans
md Admin.{ED7BA470-8E54-465E-825C-99712043E01C}
PAUSE
GOTO :menu

:Selection17

GOTO :menu
PAUSE
:Selection18

GOTO :menu
PAUSE
:Selection18
PAUSE
GOTO :menu

:Selection19
PAUSE
GOTO :menu

:Selection20
PAUSE
GOTO :menu

:Selection21
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
systeminfo
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :menu

:Selection23
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ipconfig /all |find "."|find /i /v "local"
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :menu

:Selection24
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Wmic Volume get freespace, capacity, serialnumber, driveletter
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :menu
PAUSE>NUL

:Selection25
PAUSE
GOTO :menu

:Selection26
PAUSE
GOTO :menu

:Selection27
PAUSE
GOTO :menu

:Selection28
PAUSE
GOTO :menu

:Selection29
PAUSE
GOTO :menu

:Selection30

:: TEMP AREA:

:: FIND FILE BY FIRST TWO LETTERS OF THE FILE NAME AND DISPLAY CONTENTS.

:: findstr /R /C:ip %Rootdir%scans\

:: Find file by partial filename ip202020.txt
:: for /f "delims=" %%a in (%RootDir%scans\ip?.txt) do ECHO "%%a"
for /f "delims==1 tokens" %%a in ('findstr "ip?" "%RootDir%scans"') do ECHO "%%a"
:: dir /B /S /A-D "%RootDir%scans\*ip.txt*"
:: for /F "tokens=*" %%a in ('dir /B /S /A-D "%RootDir%scans\*ip.*"') do @ECHO "%%a"

PAUSE
GOTO :menu

:DNSList
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO GOOGLE: 8.8.8.8
ECHO GOOGLE: 8.8.4.4
ECHO Rogers: 64.71.255.204
ECHO Rogers: 64.71.255.198
ECHO OpenDNS: 208.67.222.222
ECHO OpenDNS: 208.67.220.22
ECHO CloudFlare: 1.1.1.1
ECHO Norton A - 199.85.126.10
ECHO Norton B - 199.85.126.20
ECHO Norton C - 199.85.126.30
ECHO Quad9: 9.9.9.9
ECHO CleanBrowsing 185.228.168.9
ECHO CleanBrowsing: 185.228.168.168
ECHO OpenDNS: 208.67.222.123
ECHO Yandex: 77.88.8.7
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :menu

:Shutdown
Shutdown /P /F

:Restart
Shutdown /R

:Exit
exit

:Quit
cls

:USBS
cd %RootDir%
vol
PAUSE
GOTO :menu

:Help
PAUSE
GOTO :menu

:: Easter Eggs
:CC
TITLE He who Commands the future Conquers the past, He who Conquers the past Commands the future. - Some Documentary About Time Travel.
PAUSE
GOTO :menu

:one
cls
COLOR 0A
ECHO....
PAUSE>NUL
ECHO NEO....
PAUSE>NUL
ECHO....
PAUSE>NUL
ECHO....
PAUSE>NUL
ECHO....
ECHO "your mom asked me to come and check on you."
PAUSE>NUL
ECHO....
PAUSE>NUL
ECHO....
PAUSE>NUL
ECHO....
ECHO "that guy druged you man..." 
PAUSE>NUL
ECHO....
PAUSE>NUL
ECHO....
ECHO "all your stuff is gone!" 
PAUSE>NUL
ECHO....
PAUSE>NUL
ECHO....
ECHO "Wake up!!"                
PAUSE>NUL
COLOR 07
GOTO :menu


