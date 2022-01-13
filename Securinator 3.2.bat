@ ECHO OFF
::SETLOCAL ENABLEEXTENSIONS
::SETLOCAL ENABLEDELAYEDEXPANSION

:MENU
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
ECHO ~ 95. Credits                                  ~
ECHO ~ 97. Restart                                  ~
ECHO ~ 98. Shutdown                                 ~
ECHO ~ 99. Exit                                     ~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SET "RootDir=%~d0"
FOR /F "tokens=2" %%i in ('date /t') do SET mydate=%%i
SET mydate=%date%
SET mytime=%time%
ECHO  Date:%mydate% Time:%mytime%

::need better crediential varIFication method
VERIFy >NUL
net session >NUL 2>NUL
IF NOT ERRORLEVEL 1 ECHO  Administrator Privileges
IF     ERRORLEVEL 1 ECHO  User Privileges
ECHO  %SystemDrive% %SystemRoot% %RootDir% %ComputerName% %UserName%

::need to display all DNS's
BREAK
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"Default Gateway"') DO ECHO  Default Gateway:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"Subnet Mask"') DO ECHO  Subnet Mask:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"IPv4 Address"') DO ECHO  IP:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"DHCP Server"') DO ECHO  DHCP Server:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"DNS Servers"') DO ECHO  DNS Server:%%a
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SET INPUT=
SET /P INPUT=

IF "%INPUT%"==" " GOTO :MENU
IF NOT '%INPUT%'=='(0,1,2,3,4,10,11,12,13,14,20,21,22,23,24,25,26,27,95,97,98,99)' GOTO MENU

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

IF /I '%INPUT%'=='95' GOTO  Credits
IF /I '%INPUT%'=='97' GOTO  Restart
IF /I '%INPUT%'=='98' GOTO  Shutdown
IF /I '%INPUT%'=='99' GOTO  Exit

GOTO :menu
PAUSE>NUL

:Selection1
:scans
cls
TITLE The Great Scans Menu
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  THE GREAT  }~~~~~~~~~~~~~~~~~
ECHO ~~~{  Scanning Computer Securinator 2.3000  }~~~
ECHO ~~~~~~~~~~~{ ~ The Great Scans Menu  ~ }~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~  1. Create Scans Directory                   ~
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

IF "%INPUT%"==" " GOTO :scans

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
IF /I '%INPUT%'=='13' GOTO  Sm13
IF /I '%INPUT%'=='14' GOTO  Sm14
IF /I '%INPUT%'=='15' GOTO  :Menu
GOTO :scans
PAUSE>NUL

:CSD
ECHO There is no "scans" directory...
PAUSE
GOTO :scans

:FC
ECHO File Complete...
PAUSE
goto :scans

:Sm1
MD "%RootDir%"\scans
PAUSE
GOTO :scans

:Sm2
IF EXIST "%RootDir%"\scans ( TYPE "%RootDir%"\scans\mm.txt || ECHO Creating File... && WMIC MEMORYCHIP > "%RootDir%"\scans\mm.txt ) && goto :fc
IF ERRORLEVEL 1 GOTO :ERR || goto :CSD

:Sm3
IF EXIST "%RootDir%"\scans ( TYPE "%RootDir%"\scans\ip.txt || ECHO Creating File... && ipconfig /allcompartments /all > "%RootDir%"\scans\ip.txt ) && goto :fc
IF ERRORLEVEL 1 GOTO :ERR || goto :CSD

:Sm4
IF EXIST "%RootDir%"\scans ( TYPE "%RootDir%"\scans\ns.txt || ECHO Creating File... && netstat -a -b -r -s -t > "%RootDir%"\scans\ns.txt ) && goto :fc
IF ERRORLEVEL 1 GOTO :ERR || goto :CSD

:Sm5
IF EXIST "%RootDir%"\scans ( TYPE "%RootDir%"\scans\tr.txt || ECHO Creating File... && Tree /F > "%RootDir%"\scans\tr.txt ) && goto :fc
IF ERRORLEVEL 1 GOTO :ERR || goto :CSD

:Sm6
IF EXIST "%RootDir%"\scans ( TYPE "%RootDir%"\scans\tl.txt || ECHO Creating File... && tasklist /SVC > "%RootDir%"\scans\tl.txt ) && goto :fc
IF ERRORLEVEL 1 GOTO :ERR || goto :CSD

:Sm7
IF EXIST "%RootDir%"\scans ( TYPE "%RootDir%"\scans\dq.txt || ECHO Creating File... && driverquery /V > "%RootDir%"\scans\dq.txt ) && goto :fc
IF ERRORLEVEL 1 GOTO :ERR || goto :CSD

:Sm8
IF EXIST "%RootDir%"\scans ( TYPE "%RootDir%"\scans\st.txt || ECHO Creating File... && schtasks /query > "%RootDir%"\scans\st.txt ) && goto :fc
IF ERRORLEVEL 1 GOTO :ERR || goto :CSD

:Sm9
IF EXIST "%RootDir%"\scans ( TYPE "%RootDir%"\scans\at.txt || ECHO Creating File... && attrib /s > "%RootDir%"\scans\at.txt ) && goto :fc
IF ERRORLEVEL 1 GOTO :ERR || goto :CSD

:Sm10
IF EXIST "%RootDir%"\scans ( TYPE "%RootDir%"\scans\cu.txt || ECHO Creating File... && wmic cpu > "%RootDir%"\scans\cu.txt ) && goto :fc
IF ERRORLEVEL 1 GOTO :ERR || goto :CSD

:Sm11
IF EXIST "%RootDir%"\scans ( TYPE "%RootDir%"\scans\pt.txt || ECHO Creating File... && wmic port > "%RootDir%"\scans\pt.txt ) && goto :fc
IF ERRORLEVEL 1 GOTO :ERR || goto :CSD

:Sm12
IF EXIST "%RootDir%"\scans ( TYPE "%RootDir%"\scans\bs.txt || ECHO Creating File... && wmic bios > "%RootDir%"\scans\bs.txt ) && goto :fc
IF ERRORLEVEL 1 GOTO :ERR || goto :CSD

:Sm13
%RootDir%
CD scans
DIR /A
PAUSE
IF ERRORLEVEL 1 GOTO :ERR || GOTO :scans
 
:Sm14
IF EXIST "%RootDir%"\scans RD /S /Q "%RootDir%"\scans && ECHO "scans" Directory Deleted...
PAUSE
GOTO :scans )
IF ERRORLEVEL 1 GOTO :ERR || GOTO :scans

:Selection2
:rcvr
cls
TITLE The Great Recovery Screen
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  THE GREAT  }~~~~~~~~~~~~~~~~~~
ECHO ~~~~{  Scanning Computer Securinator 2.3000  }~~~
ECHO ~~~~~~~~{ ~ The Great Recovery Screen ~ }~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~  1. Check Disk                                ~
ECHO ~  2. Windows Memory Diagnostic                 ~
ECHO ~  3. Recover                                   ~
ECHO ~  4. Format                                    ~
ECHO ~  5. Bitlocker                                 ~
ECHO ~  6. Defrag                                    ~
ECHO ~  7. Windows Maclicious Software Removel Tool  ~
ECHO ~ 10. Menu                                      ~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SET INPUT=
SET /P INPUT=

IF "%INPUT%"==" " GOTO :menu

IF /I '%INPUT%'=='1' GOTO  dc1
IF /I '%INPUT%'=='2' GOTO  dc2
IF /I '%INPUT%'=='3' GOTO  dc3
IF /I '%INPUT%'=='4' GOTO  dc4
IF /I '%INPUT%'=='5' GOTO  dc5
IF /I '%INPUT%'=='6' GOTO  dc6
IF /I '%INPUT%'=='7' GOTO  dc7
IF /I '%INPUT%'=='8' GOTO  dc8
IF /I '%INPUT%'=='9' GOTO  dc9
IF /I '%INPUT%'=='10' GOTO  :MENU

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
%SystemDrive%\Windows\System3\BitLockerWizard.exe
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
goto :menu


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
IF /I [%choice%]==[7] GOTO :MENU
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
ECHO ~ 9. Main Menu                                  ~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
IF /I '%INPUT%'=='9' GOTO  :Menu
pause>NUL

:fnd1

pause
goto :fnd`

:fnd2
FOR tokens=" FIND "log" ".log" -".bmp" C:/windows > "%RootDir%"/scans/
pause
goto :fnd

:fnd3
FIND *.jpg
pause
goto :fnd

:fnd4
FIND *.PNG
pause
goto :fnd

:fnd5
FIND *.avi
pause
goto :fnd

:fnd6
FIND *.mp4
pause
goto :fnd

:fnd7
FIND *.mp3
pause
goto :fnd

:fnd8
FIND *.Wav
pause
goto :fnd

:fnd9
pause
goto :Menu

:Selection11
CMD /U
%RootDir%
GOTO :menu

:Selection12
PowerShell
GOTO :menu

:Selection13
start "~\iexplore.exe" "http://192.168.0.1"
PAUSE
GOTO :menu

:Selection14
doskey
PAUSE
GOTO :menu

:Selection16
CD "%RootDir%"\scans
MD Admin.{ED7BA470-8E54-465E-825C-99712043E01C}
PAUSE
GOTO :menu

:Selection21
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO System Information:
ECHO.
systeminfo
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :menu

:Selection22
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO IP Information:
ECHO.
ipconfig /allcompartments /all |find "."|find /i /v "local"
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :menu

:Selection23
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO Port Scan:
ECHO.
wmic port GET Endingaddress, Startingaddress
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :menu

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
GOTO :menu

:Selection25
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO Network Information:
ECHO.
netstat -a -b -r -s -t
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :menu

:Selection26
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO Mac Addresses:
ECHO.
getmac
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :menu

:Selection27
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
wmic useraccount
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :menu

:DNSList
::auto appily dns, local, router, network, device
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO Bell Canada 207.164.234.193
ECHO CleanBrowsing 185.228.168.9
ECHO CleanBrowsing: 185.228.168.168
ECHO CloudFlare: 1.1.1.1
ECHO GOOGLE: 8.8.8.8
ECHO GOOGLE: 8.8.4.4
ECHO Norton A - 199.85.126.10
ECHO Norton B - 199.85.126.20
ECHO Norton C - 199.85.126.30
ECHO OpenDNS: 208.67.222.222
ECHO OpenDNS: 208.67.220.22
ECHO OpenDNS: 208.67.222.123
ECHO Quad9: 9.9.9.9
ECHO Rogers: 64.71.255.204
ECHO Rogers: 64.71.255.198
ECHO Yandex: 77.88.8.7
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO :menu

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
GOTO :menu

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
ECHO ~ Vallently Restart in an attept to fix it.    ~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PAUSE
CMD /C %RootDir%\"Securinator 3.2.bat" || EXIT /B

:TEST







PAUSE
GOTO :menu
ToDo:

Fuctionality
	Secure DNS server list
	Secure Time server list
	Secure Proxy server list
	Secure Cloud Storage server list
	Secure Remote server list
	Secure Virtual Server List


Tobe menus.
	User Accounts
		UserAccountControlSettings - Acsess NotIFication
		C:\Windows\winsxs\x86_microsoft-windows-u..ountcontrolsettings_31bf3856ad364e35_6.1.7601.17514_none_85ac7bd736dda285

		User Accounts
		C:\Windows\winsxs\x86_microsoft-windows-netplwiz-exe_31bf3856ad364e35_6.1.7600.16385_none_ed2d0ae971b57e8d

		Username and Password back up

	File Creation
		iexpress.exe - Make .exe file
		msiexec.exe

	Need Simple Chat - FTP, BBS, Hyper terminal, telnet, remote assitence.
		msra.exe - Remote Assitence
		telnet
		dialer.exe

	Error Logs and Events
		c:/windows/system32/eventvwr.exe

	Windows Assitence
		mblctr
		MagnIFy.exe
		onscreen key board
		Voice reader thing

	Windows Configuration Menu
		regedt32.exe
		msconfig


	Other useful windows scripts
	C:\Windows\System32
		DeviceProperties.exe
		credwiz.exe
		EhStorAuthn.exe ***
		Msinfo32

	Black list.
			Auto ban,
				known ip's,
				file accses
				websites

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

	Backup
		create System restore point
		backup usernames and passwrods
		back up credentials
		back up drives

