; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=Flight Contest
AppVerName=Flight Contest 0.3.0
AppVersion=0.3.0
VersionInfoVersion=0.3.0
AppPublisher=Thomas Weise, Deutscher Pr�zisionsflug-Verein e.V.
AppPublisherURL=http://www.praeziflug.de
;AppUpdatesURL=file:\\
;AppSupportURL=http://

;DefaultDirName=d:\FC
DefaultDirName={pf}\Flight Contest
DefaultGroupName=Flight Contest

OutputBaseFilename=FCSetup

LicenseFile=K:\Projects\EPJ\PJ11\workspace\fc\web-app\licenses\GPL_License.txt
InfoBeforeFile=K:\Projects\EPJ\PJ11\workspace\fc\deploy\readme.txt

DisableProgramGroupPage=yes
MinVersion=0,4

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl";
; Name: "de"; MessagesFile: "German.isl";             InfoAfterFile: "K:\Projects\EPJ\PJ11\workspace\fc\deploy\readme.txt";

[Files]
Source: "K:\Projects\Java\jdk1.5.0_16\*";                                       DestDir: "{app}\java";           Flags: ignoreversion recursesubdirs;  Excludes: "demo,include,sample,src.zip";
Source: "K:\Projects\Server\apache-tomcat-6.0.20\*";                            DestDir: "{app}\tomcat";         Flags: ignoreversion recursesubdirs;  Excludes: "docs,examples";
Source: "K:\Projects\EPJ\PJ11\workspace\fc\deploy\tomcat-users.xml";            DestDir: "{app}\tomcat\conf";
Source: "K:\Projects\EPJ\PJ11\workspace\fc\deploy\install-service.bat";         DestDir: "{app}";
Source: "K:\Projects\EPJ\PJ11\workspace\fc\fc-0.1.war";                         DestDir: "{app}\tomcat\webapps"; DestName: "fc.war";
Source: "K:\Projects\EPJ\PJ11\workspace\fc\deploy\readme.txt";                  DestDir: "{app}";
Source: "K:\Projects\EPJ\PJ11\workspace\fc\web-app\licenses\GPL_License.txt";   DestDir: "{app}";

[Dirs]
Name: "{app}\fc"

[Run]
Filename: "{app}\install-service.bat";      Parameters: "install FlightContest";   WorkingDir: "{app}";  Flags: runhidden;
Filename: "{app}\tomcat\bin\tomcat6w.exe";  Parameters: "//MS//FlightContest";     WorkingDir: "{app}";  Flags: nowait;

[UninstallRun]
Filename: "taskkill";                       Parameters: "/F /IM tomcat6w.exe";     WorkingDir: "{app}";
Filename: "{app}\install-service.bat";      Parameters: "remove FlightContest";    WorkingDir: "{app}";  Flags: runhidden;

[InstallDelete]
Type: filesandordirs; Name: "{app}\java";
Type: filesandordirs; Name: "{app}\tomcat";

[UninstallDelete]
Type: filesandordirs; Name: "{app}\java";
Type: filesandordirs; Name: "{app}\tomcat";

[Icons]
Name: "{group}\Flight Contest Service Manager";         Filename: "{app}\tomcat\bin\tomcat6w.exe";             Parameters: "//MS//FlightContest";    WorkingDir: "{app}";
Name: "{group}\Flight Contest";                         Filename: "http://localhost:8080/fc/contest/start";    WorkingDir: "{userdesktop}";
Name: "{group}\Pr�zisionsflug-Verein e.V.";             Filename: "http://www.praeziflug.de";                  WorkingDir: "{userdesktop}";
Name: "{group}\Readme";                                 Filename: "{app}\readme.txt";                          WorkingDir: "{userdesktop}";
Name: "{group}\Lizenz";                                 Filename: "{app}\GPL_License.txt";                     WorkingDir: "{userdesktop}";
Name: "{group}\Uninstall Flight Contest";               Filename: "{uninstallexe}"
