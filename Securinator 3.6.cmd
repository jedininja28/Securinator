:startapp
@ECHO OFF
SETLOCAL ENABLEEXTENSIONS
:ToDO
REM - AdmIN Privladge test var
REM - Clean up Hardware scan file
REM - All scans scan
REM - collect ip addresses, tracert ips / nslookup ips /pINg ips
:Load
::Folders
FOR /F "usebackq delims==" %%c IN (`chdir`) DO SET cdir=%%c
SET "RootDir=%~d0"
SET rc=%RootDir%\scans
SET sec3k=%systemdrive%\Sec3k
SET log=%rc%\log
SET crc=%cdir%\scans

::Files
SET ip=%crc%\ip.txt
SET ns=%crc%\ns.txt 
SET tr=%crc%\tr.txt
SET tl=%crc%\tl.txt
SET dq=%crc%\dq.txt
SET st=%crc%\st.txt
SET at=%crc%\at.txt
SET pt=%crc%\pt.txt

::Messages
SET dde=Directory does not Exist...
SET dae=Directory Already Exists...
SET dd=Directory Deleted...
SET fae=File Already Exists...
SET fde=File Does not Exist...
SET cf=Creating File...
SET fc=File Created...
:EndLoad

:Menu
CLS
VERIFY >NUL & net session >NUL 2>NUL & IF ERRORLEVEL 1 (SET EP=F) ELSE (SET EP=T)
SET h=:Menu
TITLE The Great Scanning Computer Securinator 3000
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  The Great  }~~~~~~~~~~~~~~~~~
ECHO ~~~~{  Scanning Computer Securinator 3000  }~~~~
ECHO ~~~~~~~~~~~{ ~ The Great Main Menu ~ }~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~  1. The Great Scans Menu                     ~
ECHO ~  2. The Great Recovery Screen                ~
ECHO ~  3. The Great Ip Changer                     ~
ECHO ~  4. The Great File Finder                    ~
ECHO ~ 11. Command Prompt                           ~
ECHO ~ 12. Powershell                               ~
ECHO ~ 13. Internet Explorer                        ~
ECHO ~ 21. System Information                       ~
ECHO ~ 22. Ip Information                           ~
ECHO ~ 23. Port Scan                                ~
ECHO ~ 24. Drive Information                        ~
ECHO ~ 25. Network Information                      ~
ECHO ~ 26. Mac Addresses                            ~
ECHO ~ 27. User Accounts                            ~
ECHO ~ 30. Public Dns List                          ~
ECHO ~ 94. Restart Securinator                      ~
ECHO ~ 95. Credits                                  ~
ECHO ~ 97. Restart                                  ~
ECHO ~ 98. Shutdown                                 ~
ECHO ~~~~~~~~~~~~~~Press 'E' to Exit~~~~~~~~~~~~~~~~~
ECHO  Date: %date% Time: %time%
ECHO  %wINdir% %cdir% %ComputerName% %UserName%
IF /I %ep% == F (ECHO  User Privileges) Else (ECHO  Administrator Privileges)
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| fINdstr /IC:"Default Gateway"') DO ECHO  Default Gateway:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| fINdstr /IC:"Subnet Mask"') DO ECHO  Subnet Mask:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| fINdstr /IC:"IPv4 Address"') DO ECHO  IP:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| fINdstr 2/IC:"DHCP Server"') DO ECHO  DHCP Server:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| fINdstr /IC:"DNS Servers"') DO ECHO  DNS Server:%%a
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SET INput= & SET /p INput= & IF /I "%INput%"==" " GOTO :Menu
IF /I "%INPUT%"=="1" GOTO :MM1
IF /I "%INPUT%"=="2" GOTO :MM2
IF /I "%INPUT%"=="3" GOTO :MM3
IF /I "%INPUT%"=="4" GOTO :MM4
IF /I "%INPUT%"=="11" CMD /U
IF /I "%INPUT%"=="12" PowerShell
IF /I "%INPUT%"=="13" start "~\iexplore.exe" "http://192.168.0.1"
IF /I "%INPUT%"=="14" DOskey & PAUSE
IF /I "%INPUT%"=="20" GOTO :MM20
IF /I "%INPUT%"=="21" systeminfo & PAUSE
IF /I "%INPUT%"=="22" ipconfig /allcompartments /all |fINd "."|fINd /I /v "local" & PAUSE
IF /I "%INPUT%"=="23" wmic port GET EndINgaddress, StartINgaddress & PAUSE
IF /I "%INPUT%"=="24" GOTO :MM24
IF /I "%INPUT%"=="25" IF /I %ep% == F (goto :RAP) else (netstat -a -b -r -s -t & PAUSE)
IF /I "%INPUT%"=="26" getmac /v & PAUSE
IF /I "%INPUT%"=="27" GOTO :MM27
IF /I "%INPUT%"=="30" GOTO :DNSList
IF /I "%INPUT%"=="94" EXIT /B
IF /I "%INPUT%"=="95" GOTO :Credits
IF /I "%INPUT%"=="97" START CMD /C %RootDir%\"Securinator 3.6.CMD" /B /MAX /SEPERATE /HIGH /REALTIME
IF /I "%INPUT%"=="98" ShutDOwn /P /F
IF /I "%INPUT%"=="E" EXIT 
IF /I "%INPUT%"=="TEST" GOTO :SetupSec
GOTO %h%

:SetupSec
IF NOT EXIST %sec3k% MD %sec3k% & ECHO %sec3k% Created...
IF NOT EXIST %sec3k%\scans MD %sec3k%\scans & ECHO %sec3k% Created...
IF NOT EXIST %sec3k%\logs MD %sec3k%\logs & ECHO %sec3k% Created...
MD %sec3k%\windowssettings.{ED7BA470-8E54-465E-825C-99712043E01C} & ECHO %sec3k% Created...
COPY %cdir%\"Securinator 3.6.CMD" %sec3k% 
ipconfig /allcompartments /all > %ip% & ECHO %FC%
netstat -a -b -r -s -t > %ns% & ECHO %FC%
Tree /F > %tr% & ECHO %FC%
tasklist /SVC > %tl% & ECHO %FC%
driverquery /V > %dq% & ECHO %FC%
schtasks /query > %st% & ECHO %FC%
attrib /s > %at% & ECHO %FC%
wmic port > %pt% & ECHO %FC%

START CMD /C %sec3k%\"Securinator 3.6.CMD" & EXIT
GOTO %h%

:MM1
CLS
SET h=:MM1
Title The Great Scans Menu
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  The Great  }~~~~~~~~~~~~~~~~~
ECHO ~~~~{  Scanning Computer Securinator 3000  }~~~~
ECHO ~~~~~~~~~~{ ~ The Great Scans Menu ~ }~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~  1. Hardware Profile                         ~
ECHO ~  2. Ip Configuration                         ~
ECHO ~  3. Network Statistics                       ~
ECHO ~  4. File Tree                                ~
ECHO ~  5. Tasklist                                 ~
ECHO ~  6. Driver Query                             ~
ECHO ~  7. Scheduled Tasks                          ~
ECHO ~  8. Attribute Command                        ~
ECHO ~  9. Port Scan 2                              ~
ECHO ~ 10. Scans Directory                          ~
ECHO ~ 11. Delete Scans Directory                   ~
ECHO ~~~~~~~~~~~~~~Press 'E' to Exit~~~~~~~~~~~~~~~~~
SET INput= & SET /p INput= & IF /I "%INput%"==" " GOTO :Menu
IF /I "%INPUT%"=="1" GOTO :Hps
IF /I "%INPUT%"=="2" IF EXIST %ip% (TYPE %ip% & PAUSE) ELSE (ECHO %cf% & ipconfig /allcompartments /all > %ip% & ECHO %fc% & PAUSE)
IF /I "%INPUT%"=="3" IF EXIST %ns% (TYPE %ns% & PAUSE) ELSE (ECHO %cf% & netstat -a -b -r -s -t > %ns% & ECHO %fc% & PAUSE)
IF /I "%INPUT%"=="4" IF EXIST %tr% (TYPE %tr% & PAUSE) ELSE (ECHO %cf% & Tree /F > %tr% & ECHO %fc% & PAUSE)
IF /I "%INPUT%"=="5" IF EXIST %tl% (TYPE %tl% & PAUSE) ELSE (ECHO %cf% & tasklist /SVC > %tl% & ECHO %fc% & PAUSE)
IF /I "%INPUT%"=="6" IF EXIST %dq% (TYPE %dq% & PAUSE) ELSE (ECHO %cf% & driverquery /V > %dq% & ECHO %fc% & PAUSE)
IF /I "%INPUT%"=="7" IF EXIST %st% (TYPE %st% & PAUSE) ELSE (ECHO %cf% & schtasks /query > %st% & ECHO %st% & PAUSE)
IF /I "%INPUT%"=="8" IF EXIST %at% (TYPE %at% & PAUSE) ELSE (ECHO %cf% & attrib /s > %at% & ECHO %at% & PAUSE)
IF /I "%INPUT%"=="9" IF EXIST %pt% (TYPE %pt% & PAUSE) ELSE (ECHO %cf% & wmic port > %pt% & ECHO %pt% & PAUSE)
IF /I "%INPUT%"=="10" IF EXIST %crc% (ECHO %cf% & DIR %crc% /O /P & PAUSE & GOTO %h% ) ELSE ECHO %dde% & PAUSE
IF /I "%INPUT%"=="11" IF EXIST %crc% ( RD /S /Q %crc% & ECHO %dd% & PAUSE & GOTO %h% ) ELSE ECHO %dde% & PAUSE
IF /I "%INPUT%"=="E" GOTO :Menu
GOTO %h%
:: note: convert %input& to %i%
:hps
:: Cleanup HPS File
IF EXIST %rc% ( ECHO RunnINg Hardware ProfilINg Script...
(	
	WMIC BASEBOARD
	WMIC BIOS
	WMIC CPU
	WMIC MEMORYCHIP
	WMIC MEMPHYSICAL
	WMIC CDROM
	WMIC PRINTER
	WMIC OS
	WMIC NIC
	WMIC SOUNDDEV
) > %rc%\"Hardware Profile".txt & CALL %rc%\"Hardware Profile.txt" & GOTO %h% ) ELSE ECHO %dde% & PAUSE & GOTO %h%

:MM2
SET h=:MM2
CLS
TITLE The Great Recovery Screen
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~{  The Great  }~~~~~~~~~~~~~~~~~~
ECHO ~~~~{  Scanning Computer Securinator 3000  }~~~~
ECHO ~~~~~~~{ ~ The Great Recovery Screen ~ }~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~  1. Disk Sector Check                        ~
ECHO ~  2. Windows Memory Diagnostic                ~
ECHO ~  3. System Recovery                          ~
ECHO ~  4. Drive Format                             ~
ECHO ~  5. Bitlocker Drive Encryption               ~
ECHO ~  6. Disk Defragmentator                      ~
ECHO ~  7. Windows Maclicious Software Removel Tool ~
ECHO ~~~~~~~~~~~~~~Press 'E' to Exit~~~~~~~~~~~~~~~~~
SET INput= & SET /p INput= & IF /I "%INput%"==" " GOTO :Menu
IF "%INPUT%"==" " GOTO :Menu
IF /I "%INPUT%"=="1" chkdsk /F /R /X & GOTO %h%
IF /I "%INPUT%"=="2" %SystemDrive%\wINDOws\system32\MDSched.exe & GOTO %h%
IF /I "%INPUT%"=="3" recover %SystemDrive% & GOTO %h%
IF /I "%INPUT%"=="4" FORmat %SystemDrive% /FS:NTFS /X /P:2 & GOTO %h%
IF /I "%INPUT%"=="5" %SystemDrive%\WINDOws\System32\BitLockerWizard.exe & GOTO %h%
IF /I "%INPUT%"=="6" defrag /C /H /V & GOTO %h%
IF /I "%INPUT%"=="7" %SystemDrive%/wINDOws/system32/MRT.exe & GOTO %h%
IF /I "%INPUT%"=="8" GOTO %h%
IF /I "%INPUT%"=="9" GOTO %h%
IF /I "%INPUT%"=="E" GOTO :Menu
GOTO %h%

:MM3
CLS
SET h=:MM3
Title The Great Ip Changer
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  The Great  }~~~~~~~~~~~~~~~~~
ECHO ~~~~{  Scanning Computer Securinator 3000  }~~~~
ECHO ~~~~~~~~~~~{ ~ The Great Ip Changer ~ }~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~  1. Static Ip , Submask, And Dns Servers     ~
ECHO ~  2. Dhcp Network Configuration               ~
ECHO ~  3. Sb200 Ip Configuration                   ~
ECHO ~  4. Sb600b Ip Configuration                  ~
ECHO ~  5. T_U Configuration                        ~
ECHO ~  6. T_P Configuration                        ~
ECHO ~~~~~~~~~~~~~~Press 'E' to Exit~~~~~~~~~~~~~~~~~
SET INput= & SET /p INput= & IF /I "%INput%"==" " GOTO :Menu
IF /I "%INPUT%"=="1" GOTO Static
IF /I "%INPUT%"=="2" GOTO DHCP
IF /I "%INPUT%"=="3" GOTO SB200
IF /I "%INPUT%"=="4" GOTO SB600
IF /I "%INPUT%"=="5" GOTO T_U
IF /I "%INPUT%"=="6" GOTO T_P
IF /I "%INPUT%"=="E" GOTO :Menu
GOTO %h%
:: Note: FINd Secure Default SettINgs FOR Ip Changer
:Static
ECHO.
SET /P Addy=IP Address:
SET /P Sub_Mask=Subnet Mask:
SET /P GW=Gateway IP Address:
SET /P DNS_1=Primary DNS Server:
SET /P DNS_2=Secondary DNS Server:
netsh INterface ip SET address "Local Area Connection" static %Addy% %Sub_Mask% %GW% 1
netsh INterface ip delete dns "Local Area Connection" all
IF NOT [%DNS_1%]==[] netsh INterface ip SET dns "Local Area Connection" static %DNS_1%
IF NOT [%DNS_2%]==[] netsh INterface ip add dns "Local Area Connection" %DNS_2% INdex=2
ECHO.
netsh INterface ip show config
ECHO.
PAUSE
GOTO %h%

:DHCP
ECHO.
@ECHO SettINg up Local Area Connection FOR DHCP Configuration
netsh INterface ip SET address "Local Area Connection" source=dhcp
netsh INterface ip SET dns "Local Area Connection" source=dhcp
ECHO.
ipconfig
ECHO.
PAUSE
GOTO %h%

:SB200
ECHO.
@ECHO 10.10.241.205
netsh INterface ip delete dns "Local Area Connection" all
netsh INterface ip SET address "Local Area Connection" static 10.10.241.205 255.255.255.0 10.10.241.201 1
netsh INterface ip show config
ECHO.
PAUSE
GOTO %h%

:SB600
ECHO.
@ECHO 192.168.0.102
netsh INterface ip delete dns "Local Area Connection" all
netsh INterface ip SET address "Local Area Connection" static 192.168.0.10l 2 255.255.255.0 192.168.0.1 1
netsh INterface ip show config
ECHO.
PAUSE
GOTO %h%

:T_U
ECHO.
@ECHO 172.16.233.215
netsh INterface ip delete dns "Local Area Connection" all
netsh INterface ip SET address "Local Area Connection" static 172.16.233.215 255.255.255.0 172.16.233.214 1
netsh INterface ip show config
ECHO.
PAUSE
GOTO %h%

:T_P
ECHO.
@ECHO 10.10.10.10
netsh INterface ip delete dns "Local Area Connection" all
netsh INterface ip SET address "Local Area Connection" static 10.10.10.10 255.255.255.0 10.10.10.1 1
netsh INterface ip show config
ECHO.
PAUSE
GOTO %h%

:MM4
SET h=:MM4
CLS
Title The Great File Finder
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  The Great  }~~~~~~~~~~~~~~~~~
ECHO ~~~~{  Scanning Computer Securinator 3000  }~~~~
ECHO ~~~~~~~~~~{  The Great File Finder }~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~ 1. Find Log Files                            ~
ECHO ~ 2. Find Photo Files                          ~
ECHO ~ 3. Find Video Files                          ~
ECHO ~ 4. Find Audio Files                          ~
ECHO ~ 5. Find Document Files                       ~
ECHO ~ 6. Find Help Files                           ~
ECHO ~ 7. Find X Files                              ~
ECHO ~ 8. Find X Files                              ~
ECHO ~~~~~~~~~~~~~~Press 'E' to Exit~~~~~~~~~~~~~~~~~
SET INput= & SET /p INput= & IF /I "%INput%"==" " GOTO :Menu
IF /I "%INPUT%"=="1" GOTO :fnd1
IF /I "%INPUT%"=="2" GOTO :fnd2
IF /I "%INPUT%"=="3" GOTO :fnd3
IF /I "%INPUT%"=="4" GOTO :fnd4
IF /I "%INPUT%"=="5" GOTO :fnd5
IF /I "%INPUT%"=="6" GOTO :fnd6
IF /I "%INPUT%"=="7" GOTO :fnd7
IF /I "%INPUT%"=="8" GOTO :fnd8
IF /I "%INPUT%"=="E" GOTO :Menu
GOTO %h%

:fnd1
IF EXIST %RootDir%\"Log Files" ( ECHO Logs Folder Already Exists! & Pause & GOTO :fnd )
IF NOT EXIST %RootDir%\"Log Files" MD %RootDir%\"Log Files"
XCOPY /E /Y %SYSTEMDRIVE%\WINDOws\*.log %RootDir%\"Log Files" & ( ECHO Log files copied & Pause & GOTO :fnd ) 
PAUSE
GOTO %h%

:fnd2

PAUSE
GOTO %h%

:fnd3
FIND *.jpg
PAUSE
GOTO %h%

:fnd4
FIND *.PNG
PAUSE
GOTO %h%

:fnd5
FIND *.avi
PAUSE
GOTO %h%

:fnd6
FIND *.mp4
PAUSE
GOTO %h%

:fnd7
FIND *.mp3
PAUSE
GOTO %h%

:fnd8
FIND *.Wav
PAUSE
GOTO %h%

:MM24
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO Drive Information:
ECHO.
Wmic VOLUME GET name
Wmic VOLUME GET freespace, capacity, serialnumber
Wmic LOGICALDISK GET Description, VolumeSerialNumber, VolumeName
Wmic VOLUME GET blocksize, bootvolume, filesystem
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO %h%

:MM27
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
wmic useraccount GET name, Domain, localaccount
wmic useraccount GET Description
wmic useraccount GET SID
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO %h%

:DNSList
::auto appily dns, local, router, network, device
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO 1. Bell Canada 207.164.234.193
ECHO 2. CleanBrowsINg 185.228.168.9
ECHO 3. CleanBrowsINg: 185.228.168.168
ECHO 4. CloudFlare: 1.1.1.1
ECHO 5. GOOGLE: 8.8.8.8
ECHO 6. GOOGLE: 8.8.4.4
ECHO 7. Norton A - 199.85.126.10
ECHO 8. Norton B - 199.85.126.20
ECHO 9. Norton C - 199.85.126.30
ECHO 10. OpenDNS: 208.67.222.222
ECHO 11. OpenDNS: 208.67.220.22
ECHO 12. OpenDNS: 208.67.222.123
ECHO 13. Quad9: 9.9.9.9
ECHO 14. Rogers: 64.71.255.204
ECHO 15. Rogers: 64.71.255.198
ECHO 16. Yandex: 77.88.8.7
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO %h%

:Credits
:: Securinator by Jedininja,
ECHO 01010100 01101000 01100101 00100000 01000111 01110010 01100101 01100001 01110100 00100000 01010011 01100011 01100001 01101110 01101110 01101001 01101110 01100111 00100000 01000011 01101111 01101101 01110000 01110101 01110100 01100101 01110010 00100000 01010011 01100101 01100011 01110101 01110010 01101001 01101110 01100001 01110100 01101111 01110010 00100000 00110010 00101110 00110011 00110000 00110000 00110000 00100000 01100010 01111001 00111010 00100000 01001010 01100101 01100100 01101001 01101110 01101001 01101110 01101010 01100001 00101100 00100000
:: IpChanger By Pumkinut Ars Praefectus,
ECHO 01001001 01110000 01000011 01101000 01100001 01101110 01100111 01100101 01110010 00100000 01000010 01111001 00100000 01010000 01110101 01101101 01101011 01101001 01101110 01110101 01110100 00100000 01000001 01110010 01110011 00100000 01010000 01110010 01100001 01100101 01100110 01100101 01100011 01110100 01110101 01110011 00101100 00100000
:: Lots of Help From https://www.stackoverflow.com,
ECHO 01001100 01101111 01110100 01110011 00100000 01101111 01100110 00100000 01001000 01100101 01101100 01110000 00100000 01000110 01110010 01101111 01101101 00100000 01101000 01110100 01110100 01110000 01110011 00111010 00101111 00101111 01110111 01110111 01110111 00101110 01110011 01110100 01100001 01100011 01101011 01101111 01110110 01100101 01110010 01100110 01101100 01101111 01110111 00101110 01100011 01101111 01101101 00101100 00100000
:: Lots of Help From https://www.DOstips.com,
ECHO 01001100 01101111 01110100 01110011 00100000 01101111 01100110 00100000 01001000 01100101 01101100 01110000 00100000 01000110 01110010 01101111 01101101 00100000 01101000 01110100 01110100 01110000 01110011 00111010 00101111 00101111 01110111 01110111 01110111 00101110 01100100 01101111 01110011 01110100 01101001 01110000 01110011 00101110 01100011 01101111 01101101 00101100 00100000
:: I use 216.239.38.120 a lot.
ECHO 01001001 00100000 01110101 01110011 01100101 00100000 00110010 00110001 00110110 00101110 00110010 00110011 00111001 00101110 00110011 00111000 00101110 00110001 00110010 00110000 00100000 01100001 00100000 01101100 01101111 01110100 00101100 00100000
:: https://www.rapidtables.com/convert/number/bINary-to-ascii.html
ECHO 01101000 01110100 01110100 01110000 01110011 00111010 00101111 00101111 01110111 01110111 01110111 00101110 01110010 01100001 01110000 01101001 01100100 01110100 01100001 01100010 01101100 01100101 01110011 00101110 01100011 01101111 01101101 00101111 01100011 01101111 01101110 01110110 01100101 01110010 01110100 00101111 01101110 01110101 01101101 01100010 01100101 01110010 00101111 01100001 01110011 01100011 01101001 01101001 00101101 01110100 01101111 00101101 01100010 01101001 01101110 01100001 01110010 01111001 00101110 01101000 01110100 01101101 01101100
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO %h%

:ERR1
CLS
Title The Great Error Screen
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  The Great  }~~~~~~~~~~~~~~~~~
ECHO ~~~~{  Scanning Computer Securinator 3000  }~~~~
ECHO ~~~~~~~~~{ ~ The Great Error Screen  ~ }~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~ Something Has Went Wrong And The Great       ~
ECHO ~ Scanning Computer Securinator 2.3000 Must    ~
ECHO ~ Vallently Restart In An Attepmt To Fix It.   ~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO %h%

:RAP
ECHO.
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO This Process Requires Administrator Privladges.
ECHO Run Securinator As An Administrator Or Login To
ECHO An Administrative Account And Try Again.
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO %h%