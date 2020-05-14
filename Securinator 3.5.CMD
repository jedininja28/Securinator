@ECHO OFF
::SETLOCAL ENABLEEXTENSIONS
::SETLOCAL ENABLEDELAYEDEXPANSION
::SETLOCAL DISABLEEXTENSIONS
::SETLOCAL DISABLEDELAYEDEXPANSION

::TODO
::RESOVLE INPUT ERROR ON INPUT WITH SPACES
::DEFINE ERRORLEVELS WITH CORISPODING ERRORS
::LOG Menu COMMANDS 
::SCANS MENU ERRORS
::fc, more and sort commands
:Menu
@ECHO OFF
CLS
BREAK
TITLE The Great Scanning Computer Securinator 2.3000
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  THE GREAT  }~~~~~~~~~~~~~~~~~
ECHO ~~~{  Scanning Computer Securinator 2.3000  }~~~
ECHO ~~~~~~~~~~~{ ~ The Great Main Menu ~ }~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~  1. The Great Scans Menu                     ~
ECHO ~  2. The Great Recovery Screen                ~
ECHO ~  3. The Great Ip Changer                     ~
ECHO ~  4. The Great File Finder                    ~
ECHO ~ 10. Make Admin Folder                        ~
ECHO ~ 11. Command Prompt                           ~
ECHO ~ 12. Powershell                               ~
ECHO ~ 13. Internet Explorer                        ~
ECHO ~ 21. System Information                       ~
ECHO ~ 22. IP Information                           ~
ECHO ~ 23. Port Scan                                ~
ECHO ~ 24. Drive Information                        ~
ECHO ~ 25. Network Information                      ~
ECHO ~ 26. Mac Addresses                            ~
ECHO ~ 27. User Accounts                            ~
ECHO ~ 30. Public DNS List                          ~
ECHO ~ 94. Restart Securinator                      ~
ECHO ~ 95. Credits                                  ~
ECHO ~ 97. Restart                                  ~
ECHO ~ 98. Shutdown                                 ~
ECHO ~~~~~~~~~~~~~~PRESS 'E' TO EXIT~~~~~~~~~~~~~~~~~

:: Add Tasklist option with pid 
:: TASKKILL PID FROM .TXT FILE

BREAK
SET "RootDir=%~d0"
ECHO  Date: %date% Time: %time%

::need better crediential varIFication method
VERIFY >NUL
net session >NUL 2>NUL
IF NOT ERRORLEVEL 1 ECHO  Administrator Privileges && set /a EP=1
IF     ERRORLEVEL 1 ECHO  User Privileges && set /a EP=0
ECHO  %SystemDrive% %SystemRoot% %RootDir% %ComputerName% %UserName%

FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"Default Gateway"') DO ECHO  Default Gateway:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"Subnet Mask"') DO ECHO  Subnet Mask:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"IPv4 Address"') DO ECHO  IP:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"DHCP Server"') DO ECHO  DHCP Server:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"DNS Servers"') DO ECHO  DNS Server:%%a

ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SET INPUT= 
SET /P INPUT=
set list= 1 2 3 4 10 11 12 13 20 21 22 23 24 25 26 27 30 94 95 97 98 E TEST 

::IF NOT "%INPUT%"=="%LIST%" GOTO Menu
IF /I '%INPUT%'=='1' GOTO  Selection1
IF /I '%INPUT%'=='2' GOTO  Selection2
IF /I '%INPUT%'=='3' GOTO  Selection3
IF /I '%INPUT%'=='4' GOTO  Selection4
IF /I '%INPUT%'=='10' GOTO  Selection10
IF /I '%INPUT%'=='11' GOTO  Selection11
IF /I '%INPUT%'=='12' GOTO  Selection12
IF /I '%INPUT%'=='13' GOTO  Selection13
IF /I '%INPUT%'=='20' GOTO  Selection20
IF /I '%INPUT%'=='21' GOTO  Selection21
IF /I '%INPUT%'=='22' GOTO  Selection22
IF /I '%INPUT%'=='23' GOTO  Selection23
IF /I '%INPUT%'=='24' GOTO  Selection24
IF /I '%INPUT%'=='25' GOTO  Selection25
IF /I '%INPUT%'=='26' GOTO  Selection26
IF /I '%INPUT%'=='27' GOTO  Selection27
IF /I '%INPUT%'=='30' GOTO  DNSList
IF /I '%INPUT%'=='94' GOTO  rsec
IF /I '%INPUT%'=='95' GOTO  Credits
IF /I '%INPUT%'=='97' GOTO  Restart
IF /I '%INPUT%'=='98' GOTO  Shutdown
IF /I '%INPUT%'=='E' GOTO  Exit
IF /I '%INPUT%'=='TEST' GOTO TEST

GOTO :Menu
PAUSE>NUL

:Selection1
:scans
cls
TITLE The Great Scans Menu
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  THE GREAT  }~~~~~~~~~~~~~~~~~
ECHO ~~~{  Scanning Computer Securinator 2.3000  }~~~
ECHO ~~~~~~~~~~{ ~ The Great Scans Menu ~ }~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~  1. Create Scans Directory                   ~
ECHO ~  2. Hardware Profile                         ~
ECHO ~  3. Ip Configuration                         ~
ECHO ~  4. Network Statistics                       ~
ECHO ~  5. File Tree                                ~
ECHO ~  6. Tasklist                                 ~
ECHO ~  7. Driver Query                             ~
ECHO ~  8. Scheduled Tasks                          ~
ECHO ~  9. Attribute Command                        ~
ECHO ~ 10. Port Scan 2                              ~
ECHO ~ 11. Scans Directory                          ~
ECHO ~ 12. Delete Scans Directory                   ~
ECHO ~~~~~~~~~~~~PRESS 'E' TO GO BACK~~~~~~~~~~~~~~~~

SET INPUT=
SET /P INPUT= 

IF /I '%INPUT%'=='1' GOTO  Sm1
IF /I '%INPUT%'=='2' GOTO  Sm2
IF /I '%INPUT%'=='3' GOTO  Sm3
IF /I '%INPUT%'=='4' GOTO  Sm4
IF /I '%INPUT%'=='5' GOTO  Sm5
IF /I '%INPUT%'=='6' GOTO  Sm6
IF /I '%INPUT%'=='7' GOTO  Sm7
IF /I '%INPUT%'=='8' GOTO  Sm8
IF /I '%INPUT%'=='9' GOTO  Sm9
IF /I '%INPUT%'=='10' GOTO  Sm10
IF /I '%INPUT%'=='11' GOTO  Sm11
IF /I '%INPUT%'=='12' GOTO  Sm12
IF /I '%INPUT%'=='E' GOTO  Menu
GOTO :scans
PAUSE>NUL

:REP
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO This process requires Administrator Privladges.
ECHO Run Securinator as an Administrator or login to
ECHO an Administrative Account and try again.
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :scans

:CSD
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO Create "Scans" Directory First...
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :scans

:CF
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO Creating File...
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :scans

:FC
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO File Created...
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :scans

:Sm1
IF EXIST "%RootDir%"\scans ( ECHO Scans directory already exists... && PAUSE && GOTO :scans ) ELSE ( MD "%RootDir%"\scans && GOTO :FC )

:Sm2
IF EXIST %RootDir%/scans/ ( ECHO Running Hardware Profiling Script...
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
) > %RootDir%/scans/"Hardware Profile".txt && CALL %RootDir%/scans/"Hardware Profile".txt && GOTO :scans ) ELSE GOTO :csd

:Sm3
IF EXIST "%RootDir%"\scans ( ECHO Creating File... && ipconfig /allcompartments /all > "%RootDir%"\scans\ip.txt && TYPE "%RootDir%"\scans\ip.txt && GOTO :fc ) ELSE GOTO :CSD

:Sm4
IF %EP%==0 goto :REP
IF EXIST "%RootDir%"\scans ( ECHO Creating File... && netstat -a -b -r -s -t > "%RootDir%"\scans\ns.txt && TYPE "%RootDir%"\scans\ns.txt && GOTO :fc ) ELSE GOTO :CSD

:Sm5
IF EXIST "%RootDir%"\scans ( Tree /F > "%RootDir%"\scans\tr.txt && CALL "%RootDir%"\scans\tr.txt && GOTO :fc ) ELSE GOTO :CSD
IF ERRORLEVEL 1 GOTO :CSD || GOTO :ERR 
PAUSE
GOTO :scans

:Sm6
IF EXIST "%RootDir%"\scans ( TYPE "%RootDir%"\scans\tl.txt || ECHO Creating File... && tasklist /SVC > "%RootDir%"\scans\tl.txt && GOTO :fc ) ELSE GOTO :CSD
IF ERRORLEVEL 1 GOTO :CSD || GOTO :ERR 
PAUSE
GOTO :scans

:Sm7
IF EXIST "%RootDir%"\scans ( TYPE "%RootDir%"\scans\dq.txt || ECHO Creating File... && driverquery /V > "%RootDir%"\scans\dq.txt && GOTO :fc ) ELSE GOTO :CSD
IF ERRORLEVEL 1 GOTO :CSD || GOTO :ERR 
PAUSE
GOTO :scans

:Sm8
IF EXIST "%RootDir%"\scans ( TYPE "%RootDir%"\scans\st.txt || ECHO Creating File... && schtasks /query > "%RootDir%"\scans\st.txt && GOTO :fc ) ELSE GOTO :CSD
IF ERRORLEVEL 1 GOTO :CSD || GOTO :ERR 
PAUSE
GOTO :scans

:Sm9
IF EXIST "%RootDir%"\scans ( TYPE "%RootDir%"\scans\at.txt || ECHO Creating File... && attrib /s > "%RootDir%"\scans\at.txt && GOTO :fc ) ELSE GOTO :CSD
IF ERRORLEVEL 1 GOTO :CSD || GOTO :ERR 
PAUSE
GOTO :scans

:Sm10
IF EXIST "%RootDir%"\scans ( TYPE "%RootDir%"\scans\pt.txt || ECHO Creating File... && wmic port > "%RootDir%"\scans\pt.txt && GOTO :fc ) ELSE GOTO :CSD
IF ERRORLEVEL 1 GOTO :CSD || GOTO :ERR 
PAUSE
GOTO :scans

:Sm11
IF EXIST "%RootDir%"\scans ( DIR "%RootDir%"\scans /O /P ) ELSE GOTO :CSD

:Sm12
IF EXIST "%RootDir%"\scans ( RD /S /Q "%RootDir%"\scans && ECHO "scans" Directory Deleted... && PAUSE && GOTO :scans ) else GOTO :csd

:Selection2
:rcvr
cls
TITLE The Great Recovery Screen
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  THE GREAT  }~~~~~~~~~~~~~~~~~~
ECHO ~~~~{  Scanning Computer Securinator 2.3000  }~~~
ECHO ~~~~~~~~{ ~ The Great Recovery Screen ~ }~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~  1. Disk Sector Check                         ~
ECHO ~  2. Windows Memory Diagnostic                 ~
ECHO ~  3. System Recovery                           ~
ECHO ~  4. Drive Format                              ~
ECHO ~  5. Bitlocker Drive Encryption                ~
ECHO ~  6. Disk Defragmentator                       ~
ECHO ~  7. Windows Maclicious Software Removel Tool  ~
ECHO ~~~~~~~~~~~~~PRESS 'E' TO GO BACK~~~~~~~~~~~~~~~~

SET INPUT=
SET /P INPUT=

IF "%INPUT%"==" " GOTO :Menu
IF /I '%INPUT%'=='1' GOTO  dc1
IF /I '%INPUT%'=='2' GOTO  dc2
IF /I '%INPUT%'=='3' GOTO  dc3
IF /I '%INPUT%'=='4' GOTO  dc4
IF /I '%INPUT%'=='5' GOTO  dc5
IF /I '%INPUT%'=='6' GOTO  dc6
IF /I '%INPUT%'=='7' GOTO  dc7
IF /I '%INPUT%'=='8' GOTO  dc8
IF /I '%INPUT%'=='9' GOTO  dc9
IF /I '%INPUT%'=='E' GOTO  :Menu

GOTO :rcvr
PAUSE>NUL

:dc1
chkdsk /F /R /X
PAUSE
GOTO :rcvr

:dc2
%SystemDrive%\windows\system32\MDSched.exe
PAUSE
GOTO :rcvr

:dc3
recover %SystemDrive%
PAUSE
GOTO :rcvr

:dc4
format %SystemDrive% /FS:NTFS /X /P:2
PAUSE
GOTO :rcvr

:dc5
%SystemDrive%\Windows\System32\BitLockerWizard.exe
GOTO :rcvr

:dc6
defrag /C /H /V
::dfrgui.exe
PAUSE
GOTO :rcvr

:dc7
%SystemDrive%/windows/system32/MRT.exe
GOTO :rcvr

:dc10
GOTO :Menu


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
ECHO ~~~~~~~~~~~~~~~~~~~~~PRESS 'E' TO GO BACK~~~~~~~~~~~~~~~~~~~~~~~~~

SET /p choice=
IF /I [%choice%]==[1] GOTO Static
IF /I [%choice%]==[2] GOTO DHCP
IF /I [%choice%]==[3] GOTO SB200
IF /I [%choice%]==[4] GOTO SB600
IF /I [%choice%]==[5] GOTO T_U
IF /I [%choice%]==[6] GOTO T_P
IF /I [%choice%]==[E] GOTO :Menu
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
@ECHO Setting up Local Area Connection FOR DHCP Configuration
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
:fnd
CLS
Title The Great File Finder
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  THE GREAT  }~~~~~~~~~~~~~~~~~~
ECHO ~~~~{  Scaning Computer Securinator 2.3000  }~~~~
ECHO ~~~~~~~~~~~{  The Great File Finder }~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~ 1. Find Log Files                             ~
ECHO ~ 2. Find Photo Files                           ~
ECHO ~ 3. Find Video Files                           ~
ECHO ~ 4. Find Audio Files                           ~
ECHO ~ 5. Find Document Files                        ~
ECHO ~ 6. Find Help Files                            ~
ECHO ~ 7. Find X Files                               ~
ECHO ~ 8. Find X Files                               ~
ECHO ~~~~~~~~~~~~~PRESS 'E' TO GO BACK~~~~~~~~~~~~~~~~

SET INPUT=
SET /P INPUT=

IF /I '%INPUT%'==' ' GOTO  :fnd
IF /I '%INPUT%'=='1' GOTO  fnd1
IF /I '%INPUT%'=='2' GOTO  fnd2
IF /I '%INPUT%'=='3' GOTO  fnd3
IF /I '%INPUT%'=='4' GOTO  fnd4
IF /I '%INPUT%'=='5' GOTO  fnd5
IF /I '%INPUT%'=='6' GOTO  fnd6
IF /I '%INPUT%'=='7' GOTO  fnd7
IF /I '%INPUT%'=='8' GOTO  fnd8
IF /I '%INPUT%'=='E' GOTO  Menu
PAUSE>NUL

:fnd1
IF EXIST %RootDir%\"Log Files" ( Echo Logs Folder Already Exists! && Pause && GOTO :fnd )
IF not EXIST %RootDir%\"Log Files" MD %RootDir%\"Log Files"
XCOPY /E /Y %SYSTEMDRIVE%\Windows\*.log %RootDir%\"Log Files" && ( echo Log files copied && Pause && GOTO :fnd ) 
PAUSE
GOTO :fnd`

:fnd2

PAUSE
GOTO :fnd

:fnd3
FIND *.jpg
PAUSE
GOTO :fnd

:fnd4
FIND *.PNG
PAUSE
GOTO :fnd

:fnd5
FIND *.avi
PAUSE
GOTO :fnd

:fnd6
FIND *.mp4
PAUSE
GOTO :fnd

:fnd7
FIND *.mp3
PAUSE
GOTO :fnd

:fnd8
FIND *.Wav
PAUSE
GOTO :fnd

:fnd9
PAUSE
GOTO :Menu

:Selection11
CMD /U
%RootDir%
GOTO :Menu

:Selection12
PowerShell
GOTO :Menu

:Selection13
start "~\iexplore.exe" "http://192.168.0.1"
PAUSE
GOTO :Menu

:Selection14
doskey
PAUSE
GOTO :Menu

:Selection16
CD "%RootDir%"\scans
MD Admin.{ED7BA470-8E54-465E-825C-99712043E01C}
PAUSE
GOTO :Menu

:Selection21
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO System Information:
ECHO.
systeminfo
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :Menu

:Selection22
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO IP Information:
ECHO.
ipconfig /allcompartments /all |find "."|find /i /v "local"
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :Menu

:Selection23
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO Port Scan:
ECHO.
wmic port GET Endingaddress, Startingaddress
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :Menu

:Selection24
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO Drive Information:
ECHO.
Wmic VOLUME GET name
Wmic VOLUME GET freespace, capacity, serialnumber
Wmic LOGICALDISK GET Description, VolumeSerialNumber, VolumeName
Wmic VOLUME GET blocksize, bootvolume, filesystem
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :Menu

:Selection25
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO Network Information:
ECHO.
netstat -a -b -r -s -t
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :Menu

:Selection26
getmac /v
PAUSE
GOTO :Menu

:Selection27
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
wmic useraccount GET name, domain, localaccount
wmic useraccount GET Description
wmic useraccount GET SID
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :Menu

:DNSList
::auto appily dns, local, router, network, device
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO 1. Bell Canada 207.164.234.193
ECHO 2. CleanBrowsing 185.228.168.9
ECHO 3. CleanBrowsing: 185.228.168.168
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
GOTO :Menu

:rsec
CLS

START CMD /C %RootDir%\"Securinator 3.4.CMD" /B /MAX /SEPERATE /HIGH /REALTIME
EXIT /B
:Shutdown
Shutdown /P /F

:Restart
Shutdown /R

:exit
exit /B

:Credits
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
GOTO :Menu

:ERR
CLS
TITLE The Great Error Screen
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  THE GREAT  }~~~~~~~~~~~~~~~~~
ECHO ~~~{  Scanning Computer Securinator 2.3000  }~~~
ECHO ~~~~~~~~~{ ~ The Great Error Screen  ~ }~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~ Something has went wrong and The Great       ~
ECHO ~ Scanning Computer Securinator 2.3000 Must    ~
ECHO ~ Vallently Restart in an attepmt to fix it.   ~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PAUSE
GOTO :rsec

:TEST

PAUSE
GOTO :Menu

ToDo:

	Fuctionality
		Secure Internet
			Secure DNS server list and links
			Secure Time server list and links
			Secure Proxy server list and links
			Secure Cloud Storage server list and links
			Secure Remote server list and links
			Secure Virtual Server List and links
		
		folder list .txt file Folder backup
		file compairson
		delete all else
		
	Tobe Menus.
		User Accounts
			UserAccountControlSettings - Acsess NotIFication
			C:\Windows\winsxs\x86_microsoft-windows-u..ountcontrolsettings_31bf3856ad364e35_6.1.7601.17514_none_85ac7bd736dda285

			User Accounts
			C:\Windows\winsxs\x86_microsoft-windows-netplwiz-exe_31bf3856ad364e35_6.1.7600.16385_none_ed2d0ae971b57e8d

			Username and Password back up
			WMIC GROUP
		
	File Creation
		iexpress.exe - Make .exe file
		msiexec.exe

	Need Simple Chat - FTP, BBS, Hyper terminal, telnet, remote assitence.
		msra.exe - Remote Assitence
		telnet
		dialer.exe

	Error Logs and Events
		c:/windows/system32/eventvwr.exe
		windows error log thing
		dirext x error log
		.net error log
		runtime
		internet exploroer error log

	Windows Assitence
		mblctr
		MagnIFy.exe
		onscreen key board
		Voice reader thing

	Other useful windows scripts
		C:\Windows\System32
			DeviceProperties.exe
			credwiz.exe
			EhStorAuthn.exe ***
			Msinfo32
			WMIC NTEVENTLOG
		
	Black list.
			Auto ban,
				known ip's,
				file accses
				websites
				media
				applications

	Auto Secure
		Close open ports
		appilly mac address filter
		limit ip range
		Configure windows defender
		configure windows firewall
		configure user acsess
		change default usernames and passwords
		Router
		windows
		paraental controlls
		
	Backup
		create System restore point
		backup usernames and passwrods
		back up credentials
		back up drives

	The Great things Windows Does Menu
		Registry editor
		Msconfig
		task manager
		resorce monitor
		
	Netsh
		netsh wlan show all