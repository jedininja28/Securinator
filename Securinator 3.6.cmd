:startapp
@ECHO OFF
SETLOCAL ENABLEEXTENSIONS
:ToDO
REM - Clean up Hardware scan file
REM - All scans scan
REM - collect ip addresses, tracert ips / nslookup ips /pINg ips

:Load
::Folders
FOR /F "usebackq delims==" %%c IN (`chdir`) DO SET cdir=%%c
SET "RootDir=%~d0"
SET rc=%RootDir%\scans
SET sec3k=%systemdrive%\sec3k
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
SET si=%crc%\si.txt
SET hp=%crc%\hp.txt
::Messages
SET dde=Directory does not Exist...
SET dae=Directory Already Exists...
SET dd=Directory Deleted...
SET fae=File Already Exists...
SET fde=File Does not Exist...
SET cf=Creating File...
SET fc=File Created...
SET rsf=Run setup first by typing setup into the main menu.
:EndLoad

:Menu
CLS
VERIFY >NUL & net session >NUL 2>NUL & IF ERRORLEVEL 1 (SET EP=F) ELSE (SET EP=T)
SET h=:Menu
TITLE Securinator 3000
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  The Great  }~~~~~~~~~~~~~~~~~
ECHO ~~~~{  Scanning Computer Securinator 3000  }~~~~
ECHO ~~~~~~~~~~~~~~~~{ ~ Main Menu ~ }~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~  1. The Great Scans Menu                     ~
ECHO ~  2. The Great Recovery Screen                ~
ECHO ~  3. The Great Ip Changer                     ~
ECHO ~  4. The Great File Finder                    ~
ECHO ~  5. The Great List of Lists                  ~
ECHO ~ 11. Command Prompt                           ~
ECHO ~ 12. Powershell                               ~
ECHO ~ 12. Command Com                              ~
ECHO ~ 13. Internet Explorer                        ~
ECHO ~ 21. System Information                       ~
ECHO ~ 22. Ip Information                           ~
ECHO ~ 23. Port Scan                                ~
ECHO ~ 24. Drive Information                        ~
ECHO ~ 25. Network Information                      ~
ECHO ~ 26. Mac Addresses                            ~
ECHO ~ 27. User Accounts                            ~
ECHO ~ 97. Restart Securinator                      ~
ECHO ~ 94. Restart Computer                         ~
ECHO ~ 98. Shutdown Computer                        ~
ECHO ~~~~~~~~~~~~~~Press 'E' to Exit~~~~~~~~~~~~~~~~~
ECHO ~    Date: %date% Time:%time%     ~  
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO  %rootdir% %cdir% %ComputerName% %UserName%
IF /I "%ep%"=="F" (ECHO  User Privileges) Else (ECHO  Administrator Privileges)
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"Default Gateway"') DO ECHO  Default Gateway:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"Subnet Mask"') DO ECHO  Subnet Mask:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"IPv4 Address"') DO ECHO  IP:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"DHCP Server"') DO ECHO  DHCP Server:%%a
FOR /F "tokens=2 delims=:" %%a IN ('ipconfig /all ^| findstr /IC:"DNS Servers"') DO ECHO  DNS Server:%%a
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SET i= & SET /p i= & IF /I "%i%"==" " GOTO :Menu
IF /I "%i%"=="1" GOTO :MM1
IF /I "%i%"=="2" GOTO :MM2
IF /I "%i%"=="3" GOTO :MM3
IF /I "%i%"=="4" GOTO :MM4
IF /I "%i%"=="5" GOTO :MM5
IF /I "%i%"=="20" GOTO :MM20
IF /I "%i%"=="24" GOTO :MM6
IF /I "%i%"=="27" GOTO :MM7
IF /I "%i%"=="30" GOTO :DNSList
IF /I "%i%"=="11" CMD /U
IF /I "%i%"=="12" PowerShell
IF /I "%i%"=="13" start /REALTIME "" "http://192.168.0.1" rem default browser
IF /I "%i%"=="21" systeminfo /FO LIST & PAUSE
IF /I "%i%"=="22" ipconfig /allcompartments /all |find "."|find /I /v "local" & PAUSE
IF /I "%i%"=="23" wmic port GET Startingaddress, Endingaddress & PAUSE
IF /I "%i%"=="25" IF /I %ep% == F (goto :RAP) else (netstat -a -b -r -s -t & PAUSE)
IF /I "%i%"=="26" getmac /FO LIST /v & PAUSE
IF /I "%i%"=="97" START CMD /E:ON %RootDir%\"Securinator 3.6.CMD" /B /SEPERATE /HIGH /REALTIME
IF /I "%i%"=="94" Shutdown /G /F
IF /I "%i%"=="98" Shutdown /P /F
IF /I "%i%"=="E" EXIT
IF /I "%i%"=="TEST" GOTO :test
IF /I "%i%"=="reload" GOTO :load
IF /I "%i%"=="credits" GOTO :Credits
IF /I "%i%"=="setup" GOTO :SetupSec3k
GOTO %h%

:SetupSec3k
IF EXIST %sec3k% RD /S /Q %sec3k% & ECHO Sec3k Deleted...
MD %sec3k% & ECHO %FC%
MD %sec3k%\scans & ECHO %FC%
MD %sec3k%\logs & ECHO %FC%
MD %sec3k%\search & ECHO %FC%
MD %sec3k%\Windowssettings.{ED7BA470-8E54-465E-825C-99712043E01C} & ECHO %FC%
COPY %cdir%\"Securinator 3.6.CMD" %sec3k%
START CMD /C %sec3k%\"Securinator 3.6.CMD" & EXIT rem & DEL %cdir%\"Securinator 3.6.CMD"
GOTO %h%


:test
find "*.ufo" %systemdrive%\cavedog
PAUSE 
GOTO %h%

:MM1
CLS
SET h=:MM1
IF EXIST %sec3k% IF NOT EXIST %crc% MD %crc% ELSE ECHO %rsf%
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
ECHO ~ 10. Systeminfo                               ~
ECHO ~ 12. Scans Directory                          ~
ECHO ~ 13. Delete Scans Directory                   ~
ECHO ~~~~~~~~~~~~~~Press 'E' to Exit~~~~~~~~~~~~~~~~~
SET i= & SET /p i= & IF /I "%i%"==" " GOTO :Menu
IF /I "%i%"=="1" GOTO :Hps
IF /I "%i%"=="2" IF EXIST %ip% (TYPE %ip% & PAUSE) ELSE (ECHO %cf% & ipconfig /allcompartments /all > %ip% & ECHO %fc% & PAUSE)
IF /I "%i%"=="3" IF EXIST %ns% (TYPE %ns% & PAUSE) ELSE (ECHO %cf% & netstat -a -b -r -s -t > %ns% & ECHO %fc% & PAUSE)
IF /I "%i%"=="4" IF EXIST %tr% (TYPE %tr% & PAUSE) ELSE (ECHO %cf% & Tree /F > %tr% & ECHO %fc% & PAUSE)
IF /I "%i%"=="5" IF EXIST %tl% (TYPE %tl% & PAUSE) ELSE (ECHO %cf% & tasklist /SVC > %tl% & ECHO %fc% & PAUSE)
IF /I "%i%"=="6" IF EXIST %dq% (TYPE %dq% & PAUSE) ELSE (ECHO %cf% & driverquery /V > %dq% & ECHO %fc% & PAUSE)
IF /I "%i%"=="7" IF EXIST %st% (TYPE %st% & PAUSE) ELSE (ECHO %cf% & schtasks /query > %st% & ECHO %st% & PAUSE)
IF /I "%i%"=="8" IF EXIST %at% (TYPE %at% & PAUSE) ELSE (ECHO %cf% & attrib /s > %at% & ECHO %at% & PAUSE)
IF /I "%i%"=="9" IF EXIST %pt% (TYPE %pt% & PAUSE) ELSE (ECHO %cf% & wmic port > %pt% & ECHO %pt% & PAUSE)
IF /I "%i%"=="10" IF EXIST %si% (TYPE %si% & PAUSE) ELSE (ECHO %cf% & systeminfo > %si% & ECHO %si% & PAUSE)
IF /I "%i%"=="12" IF EXIST %crc% (ECHO %cf% & DIR %crc% /O /P & PAUSE & GOTO %h%) ELSE ECHO %dde% & PAUSE
IF /I "%i%"=="13" IF EXIST %crc% (RD /S /Q %crc% & ECHO %dd% & PAUSE & GOTO %h%) ELSE ECHO %dde% & PAUSE
IF /I "%i%"=="E" GOTO :Menu
GOTO %h%

:hps
:: Cleanup HPS File
:: add systeminfo
IF EXIST %crc% ( ECHO Running Hardware Profiling Script...
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
) > %hp% & CALL %hp% & GOTO %h% ) ELSE ECHO %dde% & PAUSE & GOTO %h%

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
SET i= & SET /p i= & IF /I "%i%"==" " GOTO :Menu
IF "%i%"==" " GOTO :Menu
IF /I "%i%"=="1" chkdsk /F /R /X & GOTO %h%
IF /I "%i%"=="2" %SystemDrive%\Windows\system32\MDSched.exe & GOTO %h%
IF /I "%i%"=="3" recover %SystemDrive% & GOTO %h%
IF /I "%i%"=="4" format %SystemDrive% /FS:NTFS /X /P:2 & GOTO %h%
IF /I "%i%"=="5" %SystemDrive%\Windows\System32\BitLockerWizard.exe & GOTO %h%
IF /I "%i%"=="6" defrag /C /H /V & GOTO %h%
IF /I "%i%"=="7" %SystemDrive%/Windows/system32/MRT.exe & GOTO %h%
IF /I "%i%"=="8" GOTO %h%
IF /I "%i%"=="9" GOTO %h%
IF /I "%i%"=="E" GOTO :Menu
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
ECHO ~  1. Static Ip, Submask, and DNS Servers      ~
ECHO ~  2. Dhcp Network Configuration               ~
ECHO ~  3. Sb200 Ip Configuration                   ~
ECHO ~  4. Sb600b Ip Configuration                  ~
ECHO ~  5. T_U Configuration                        ~
ECHO ~  6. T_P Configuration                        ~
ECHO ~~~~~~~~~~~~~~Press 'E' to Exit~~~~~~~~~~~~~~~~~
SET i= & SET /p i= & IF /I "%i%"==" " GOTO :Menu
IF /I "%i%"=="1" GOTO Static
IF /I "%i%"=="2" GOTO DHCP
IF /I "%i%"=="3" GOTO SB200
IF /I "%i%"=="4" GOTO SB600
IF /I "%i%"=="5" GOTO T_U
IF /I "%i%"=="6" GOTO T_P
IF /I "%i%"=="E" GOTO :Menu
GOTO %h%
:: Note: Find Secure Default Settings for Ip Changer

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
IF NOT [%DNS_2%]==[] netsh interface ip add dns "Local Area Connection" %DNS_2% Index=2
ECHO.
netsh interface ip show config
ECHO.
PAUSE
GOTO %h%

:DHCP
ECHO.
@ECHO Setting up Local Area Connection for DHCP Configuration
netsh interface ip SET address "Local Area Connection" source=dhcp
netsh interface ip SET dns "Local Area Connection" source=dhcp
ECHO.
ipconfig
ECHO.
PAUSE
GOTO %h%

:SB200
ECHO.
@ECHO 10.10.241.205
netsh interface ip delete dns "Local Area Connection" all
netsh interface ip SET address "Local Area Connection" static 10.10.241.205 255.255.255.0 10.10.241.201 1
netsh interface ip show config
ECHO.
PAUSE
GOTO %h%

:SB600
ECHO.
@ECHO 192.168.0.102
netsh interface ip delete dns "Local Area Connection" all
netsh interface ip SET address "Local Area Connection" static 192.168.0.10l 2 255.255.255.0 192.168.0.1 1
netsh interface ip show config
ECHO.
PAUSE
GOTO %h%

:T_U
ECHO.
@ECHO 172.16.233.215
netsh interface ip delete dns "Local Area Connection" all
netsh interface ip SET address "Local Area Connection" static 172.16.233.215 255.255.255.0 172.16.233.214 1
netsh interface ip show config
ECHO.
PAUSE
GOTO %h%

:T_P
ECHO.
@ECHO 10.10.10.10
netsh interface ip delete dns "Local Area Connection" all
netsh interface ip SET address "Local Area Connection" static 10.10.10.10 255.255.255.0 10.10.10.1 1
netsh interface ip show config
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
ECHO ~  1. Find Log Files                           ~
ECHO ~  5. Find Help Files                          ~
ECHO ~  2. Find Photo Files                         ~
ECHO ~  3. Find Video Files                         ~
ECHO ~  4. Find Audio Files                         ~
ECHO ~  5. Find Document Files                      ~
ECHO ~  6. Find Compressed Archives                 ~
ECHO ~  7. Find Programing Language Files           ~
ECHO ~  8. Find Cursors                             ~
ECHO ~  9. Find Emojis                              ~
ECHO ~ 10. Find Fonts                               ~
ECHO ~ 11. Find Icons                               ~
ECHO ~ 12. Find Languages Packs                     ~
ECHO ~ 13. Find 3D Model Files                      ~
ECHO ~ 14. Find Maps                                ~
ECHO ~ 15. Find Bookmarks                           ~
ECHO ~ 16. Find Contacts                            ~
ECHO ~ 17. Find Emails                              ~
ECHO ~ 18. Find Message Archives                    ~
ECHO ~ 19. Find File Certificates                   ~
ECHO ~ 20. Find Encrypted Files                     ~
ECHO ~ 21. Find Windows System Files                ~
ECHO ~ 22. Find Keyword Search                      ~
ECHO ~~~~~~~~~~~~~~Press 'E' to Exit~~~~~~~~~~~~~~~~~
SET i= & SET /p i= & IF /I "%i%"==" " GOTO :Menu
IF /I "%i%"=="1" GOTO :fnd1
IF /I "%i%"=="2" GOTO :fnd2
IF /I "%i%"=="3" GOTO :fnd3
IF /I "%i%"=="4" GOTO :fnd4
IF /I "%i%"=="5" GOTO :fnd5
IF /I "%i%"=="6" GOTO :fnd6
IF /I "%i%"=="7" GOTO :fnd7
IF /I "%i%"=="8" GOTO :fnd8
IF /I "%i%"=="9" GOTO :fnd7
IF /I "%i%"=="10" GOTO :fnd9
IF /I "%i%"=="11" GOTO :fnd10
IF /I "%i%"=="12" GOTO :fnd12
IF /I "%i%"=="13" GOTO :fnd13
IF /I "%i%"=="14" GOTO :fnd14
IF /I "%i%"=="15" GOTO :fnd15
IF /I "%i%"=="16" GOTO :fnd16
IF /I "%i%"=="17" GOTO :fnd17
IF /I "%i%"=="18" GOTO :fnd18
IF /I "%i%"=="19" GOTO :fnd19
IF /I "%i%"=="20" GOTO :fnd20
IF /I "%i%"=="21" GOTO :fnd21
IF /I "%i%"=="21" GOTO :fnd22
IF /I "%i%"=="E" GOTO :Menu
GOTO %h%

:fnd1
::Log Files
install, configure, event, log, Diagnostics
C:\Windows\Logs
GOTO %h%

:fnd2
::Image Files
find "*.jpg" %systemdrive%
"*.bmp;*.dib;*.jpg;*.jpeg;*.jpeg;*.jfif;*.gif;*.tif;*.tiff;*.png;*.heic;*.ico;*.3mf;*.stl;*.ply;*.obj;*.blg"
::Bitmap
*.bmp
*.dib
find "*.jpg" %systemdrive%
*.jpeg
*.jfif
*.gif
*.tif
*.tiff
*.png
*.heic
::Icon
*.ico
*.3mf
*.stl
*.ply
*.obj
*.blg
PAUSE
GOTO %h%

:fnd3
::Video Files
*.avi
*.mp4
*.divx
*.mpeg
PAUSE
GOTO %h%

:fnd4
::Audio Files
*.mp3
*.Wav
*.midi
*.flac
::Audio Project Files
::FL Studio
*.flp
::Audition
::Reason
::Qubase
::Garage band
::riff works
::audasity
::logic
::abelton live
::serieto
::traktor
::virtual dj
::guitar rig
::Protools
PAUSE
GOTO %h%

:fnd5
::Document Files
::Text File
*.txt
*.doc
*.pdf
::Rice text File
*.rtf
*.xml
*.odt
PAUSE
GOTO %h%

:fnd6
::Compressed Archives
*.zip
*.7z
*.iso
*.cab
*.bin
*.mui
PAUSE
GOTO %h%

:fnd7
::Programing Language Files

::All Languages
*.as;*.mx;*.ada;*.ads;*.adb;*.asm;*.mib;*.asp;*.au3;*.avs;*.avsi;*.bc;*.cln;*.bash;*.sh;*.bsh;*.csh;*.bash_profile;*.bashrc;*.profile;*.bat;*.cmd;*.mt;*.com;*.bb;*.c;*.lex;*.ml;*.mli;*.sml;*.thy;*.cmake;*.cbl;*.cbd;*.cdb;*.cdc;*.cob;*.orc;*.sco;*.csd;*.coffee;*.litcoffee;*.h;*.hh;*.hpp;*.hxx;*.cpp;*.cxx;*.cc;*.ino;*.cs;*.css;*.d;*.diff;*.patch;*.erl;*.hrl;*.src;*.em;*.forth;*.f;*.for;*.f90;*.f95;*.f2k;*.f23;*.f77;*.bas;*.bi;*.hs;*.lhs;*.las;*.html;*.htm;*.shtml;*.shtm;*.xhtml;*.xht;*.hta;*.ini;*.inf;*.url;*.wer;*.iss;*.hex;*.java;*.js;*.jsm;*.jsx;*.ts;*.tsx;*.json;*.jsp;*.kix;*.lsp;*.lisp;*.tex;*.sty;*.lua;*.mak;*.m;*.mms;*.nim;*.tab;*.spt;*.nfo;*.nsi;*.nsh;*.osx;*.mm;*.pas;*.pp;*.p;*.inc;*.lpr;*.pl;*.pm;*.plx;*.php;*.php3;*.php4;*.php5;*.phps;*.phpt;*.phtml;*.ps;*.ps1;*.psm1;*.properties;*.pb;*.py;*.pyw;*.r;*.s;*.splus;*.r2;*.r3;*.reb;*.reg;*.rc;*.rb;*.rbw;*.rs;*.scm;*.smd;*.ss;*.st;*.scp;*.out;*.sql;*.mot;*.srec;*.swift;*.tcl;*.tek;*.tex;*.vb;*.vbs;*.t2t;*.v;*.sv;*.vh;*.svh;*.vhd;*.vhdl;*.pro;*.cl;*.i;*.pack;*.ph;*.xaml;*.xls;*.xslt;*.xsd;*.xul;*.kml;*.svg;*.mxml;*.xsml;*.wsdl;*.xlf;*.xliff;*.xbl;*.sxbl;*.sitemap;*.gml;*.gml;*.plist;*.yml;*.yaml;
::Flash ActionScript
*.as;*.mx;
::Ada
*.ada;*.ads;*.adb;
::Assembly Language
*.asm;
::Abstract Syntax Notation One
*.mib;
::Active Server Page Script
*.asp;
::AutoIt
*.au3;
::AviSynth
*.avs;*.avsi;
::BaanC
*.bc;*.cln;
::Unix
*.bash;*.sh;*.bsh;*.csh;*.bash_profile;*.bashrc;*.profile;
::Batch
*.bat;*.cmd;*.mt;*.com;
::BlitzBasic
*.bb;
::C source
*.c;*.lex;
::Categorical Abstract Machine Language
*.ml;*.mli;*.sml;*.thy;
::CMake
*.cmake;
::COmmon Business Oriented Language
*.cbl;*.cbd;*.cdb;*.cdc;*.cob;
::Csound
*.orc;*.sco;*.csd;
::CoffeeScript
*.coffee;*.litcoffee;
::C++
*.h;*.hh;*.hpp;*.hxx;*.cpp;*.cxx;*.cc;*.ino;
::C#
*.cs;
::Cascade Style Sheet
*.css;
::D Programming Language
*.d;
::Diff
*.diff;*.patch;
::Erlang
*.erl;*.hrl;
::EScript
*.src;*.em;
::Forth
*.forth;
::fortran
*.f;*.for;*.f90;*.f95;*.f2k;*.f23;*.f77;
::FreeBasic
*.bas;*.bi;
::Haskell
*.hs;*.lhs;*.las;
::Hyper Text Markup Language
*.html;*.htm;*.shtml;*.shtm;*.xhtml;*.xht;*.hta;
::MS ini
*.ini;*.inf;*.url;*.wer;
::Inno Setup Script
*.iss;
::Intel HEX binary data
*.hex;
::Java
*.java;
::JavaScript
*.js;*.jsm;*.jsx;*.ts;*.tsx;
::JSON
*.json;
::JavaServer Pages Script
*.jsp;
::KiXtart
*.kix;
::List Processing Launguage
*.lsp;*.lisp;
::LaTeX
*.tex;*.sty;
::Lua
*.lua;
::Makefile
*.mak;
::MATrix LABoratory
*.m;
::MMIXAL
*.mms;
::Nimrod
*.nim;
::extended crontab
*.tab;*.spt;
::MSDOS Style/ASCII Art
*.nfo;
::Nullsoft Scriptable Install System
*.nsi;*.nsh;
::OScript
*.osx;
::Objective-C
*.mm;
::Pascal
*.pas;*.pp;*.p;*.inc;*.lpr;
::Perl
*.pl;*.pm;*.plx;
::PHP Hypertext Preprocessor
*.php;*.php3;*.php4;*.php5;*.phps;*.phpt;*.phtml;
::PostScript
*.ps;
::Windows PowerShell
*.ps1;*.psm1;
::Properties
*.properties;
::PureBasic
*.pb;
::Python
*.py;*.pyw;
::R programming language
*.r;*.s;*.splus;
::REBOL
*.r2;*.r3;*.reb;
::Registry File
*.reg;
::Windows Resource
*.rc;
::Ruby
*.rb;*.rbw;
::Rust
*.rs;
::Scheme
*.scm;*.smd;*.ss;
::Smalltalk
*.st;
::spice
*.scp;*.out;
::Structured Query Launguage
*.sql;
::Motorola S-Record binary data
*.mot;*.srec;
::Swift
*.swift;
::Tool Command Launguage
*.tcl;
::Tektronic extended HEX binary data
*.tek;
::TeX
*.tex;
::Visual Basic
*.vb;*.vbs;
::txt2tags
*.t2t;
::Verilog
*.v;*.sv;*.vh;*.svh;
::VHSIC Hardware Description Launguage
*.vhd;*.vhdl;
::Visual Prolog
*.pro;*.cl;*.i;*.pack;*.ph;
::Xml
*.xaml;*.xls;*.xslt;*.xsd;*.xul;*.kml;*.svg;*.mxml;*.xsml;*.wsdl;*.xlf;*.xliff;*.xbl;*.sxbl;*.sitemap;*.gml;*.gml;*.plist;
::YAML Ain't Markup Language
*.yml;*.yaml;

PAUSE
GOTO %h%

:fnd8
::Windows System Files
*.default;
*.dat
*.diagpkg;
::Cursors
*.ani
*.cur
::Help Files
::Compiled HTML Help file
*.CHM
C:\Windows\Help
::TrueType font file
*.ttf
::contacts
::emails
::message archives
::file certificates
::bookmarks
::encrypted files
::3d model files
::fonts
::languages
::voices
::dll
::maps
::Help Files
::keyword search
::emojis
::keyword search
boot, kernal,shell.root,boot,admin,administrator, logon, login, ui, Rules, Systems
Help Files
*.ico
PAUSE
GOTO %h%

:MM5
CLS
SET h=:MM5
TITLE List of Lists
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~{  The Great  }~~~~~~~~~~~~~~~~~
ECHO ~~~~{  Scanning Computer Securinator 3000  }~~~~
ECHO ~~~~~~~~~~~~~~{ ~ List of Lists ~ }~~~~~~~~~~~~~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~  1. DNS list                                 ~
ECHO ~  2. World Domains                            ~
ECHO ~  3. Ascii                                    ~
ECHO ~  4. Option4                                  ~
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO ~  Date: %date%  Time:%time%  ~
ECHO ~~~~~~~~~~~~~~Press 'E' to Exit~~~~~~~~~~~~~~~~~
SET i= & SET /p i= & IF /I "%i%"==" " GOTO %h%
IF /I "%i%"=="1" GOTO :LL1
IF /I "%i%"=="2" GOTO :LL2
IF /I "%i%"=="3" GOTO :LL3
IF /I "%i%"=="4" GOTO :LL4
IF /I "%i%"=="E" GOTO :Menu
GOTO %h%

:LL1
::auto appily dns, local, router, network, device
::Verify DNS server/route
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO  1. Bell Canada:            207.164.234.193
ECHO  2. Rogers:                 64.71.255.204
ECHO  3. Rogers:                 64.71.255.198
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO  4. CleanBrowsing:          185.228.168.9
ECHO  5. CleanBrowsing:          185.228.168.168
ECHO  6. CloudFlare:             1.1.1.1
ECHO  7. CloudFlare:             1.0.0.1
ECHO  8. GOOGLE:                 8.8.8.8
ECHO  9. GOOGLE:                 8.8.4.4
ECHO 10. Norton A:               199.85.126.10
ECHO 11. Norton A:               199.85.127.10
ECHO 12. Norton B:               199.85.126.20
ECHO 13. Norton B:               199.85.127.20
ECHO 14. Norton C:               199.85.126.30
ECHO 15. Norton C:               199.85.127.30
ECHO 16. OpenDNS:                208.67.222.222
ECHO 17. OpenDNS:                208.67.220.220
ECHO 18. OpenDNS:                208.67.220.22
ECHO 19. OpenDNS:                208.67.222.123
ECHO 20. Quad9:                  9.9.9.9
ECHO 21. Quad9:                  149.112.112.112
ECHO 22. Comodo Secure DNS:      8.26.56.26
ECHO 23. Comodo Secure DNS:      8.20.247.20
ECHO 24. Verisign DNS:           64.6.64.6
ECHO 25. Verisign DNS2:          64.6.65.6
ECHO 26. Yandex:                 77.88.8.7
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PAUSE
GOTO %h%
:LL2
ECHO Option2
PAUSE
GOTO %h%
:LL3


:LL4
ECHO Option4
PAUSE
GOTO %h%

:MM6
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

:MM7
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
wmic useraccount GET name, Domain, localaccount
wmic useraccount GET SID
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
:: Lots of Help From https://www.Dostips.com,
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

:Idol bantering
path: C:\Windows\WinSxS\x86_microsoft-Windows-t..nputpersonalization_31bf3856ad364e35_10.0.17763.1_none_d45361576620300e
filename: Alphabet.xml
whole line: C:\Windows\WinSxS\x86_microsoft-Windows-t..nputpersonalization_31bf3856ad364e35_10.0.17763.1_none_d45361576620300e\Alphabet.xml
skip line 3581
begin line >
end line <
message lines:
3582 3631
3634 3683
3686 3735
3738 3787

:New Graphics
┌─┐
│ │
└─┘
┬ ┴ ├ ┤
░ ▒ ▓ █ ▄ ■ ▀

:Logo
┌─────────────────┐
│ ┌─┐      ┌─┐┐   │
│ │          ││   │
│ └─┐┌─┐┌─┐ ─┤│ ┌ │
│   │├─ │    │├─┤ │
│ └─┘└─┘└─┘└─┘┘ └ │
└─────────────────┘

:New Commands
mem /p /d /c
mem /p & mem /d & mem /p 

:ISP List
::x y z
:Verify Time Server
::time server list
::verify time
::atomic clock
::NAVY master clock
::world times
:Auto Secure
::Modify Group Policy
::Set file access
::Block Common Trojen ports
::Human interface lock
::Setup Secure router / VPN
::Data/Drive/Device/Signal Encryption
::Hostile Region/ip/language blocker
::spoof detector
::Bandwidth monitor
::ip lookup + file acsess + map locations
::isp/vpn Auto switch
:Cyber Security Net
::Fourms, websites, usful links and content
::Verified Acount, Chat, ftp, Fourm, informantion report center
::Message Net (bitnet)

