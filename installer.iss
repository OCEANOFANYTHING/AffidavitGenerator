; Inno Setup Script for Affidavit Generator
; This script creates a professional Windows installer

#define MyAppName "Affidavit Generator"
#define MyAppVersion "1.0"
#define MyAppPublisher "N&D Co."
#define MyAppURL "https://www.ndcompany.in"
#define MyAppExeName "AffidavitGenerator.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
AppId={{A8B9C1D2-E3F4-5678-9ABC-DEF012345678}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=installer_output
OutputBaseFilename=AffidavitGenerator_Setup_v{#MyAppVersion}
SetupIconFile=logo.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
UninstallDisplayIcon={app}\{#MyAppExeName}
UninstallDisplayName={#MyAppName}
VersionInfoVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
VersionInfoDescription={#MyAppName} Installer

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 6.1; Check: not IsAdminInstallMode

[Files]
; Main executable
Source: "dist\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
; Logo files
Source: "dist\logo.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "dist\logo.png"; DestDir: "{app}"; Flags: ignoreversion
; Affidavit templates
Source: "dist\affidavit\*"; DestDir: "{app}\affidavit"; Flags: ignoreversion recursesubdirs createallsubdirs
; Output folder (create empty)
; NOTE: Use "Flags: uninsneveruninstall" if you want to preserve user data during uninstall

[Dirs]
Name: "{app}\output"; Flags: uninsneveruninstall

[Icons]
; Start Menu Program shortcut
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\logo.ico"
; Start Menu Uninstall shortcut
Name: "{group}\Uninstall {#MyAppName}"; Filename: "{uninstallexe}"
; Desktop icon (if selected)
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\logo.ico"; Tasks: desktopicon
; Quick Launch icon (if selected)
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\logo.ico"; Tasks: quicklaunchicon

[Run]
; Option to launch the application after installation
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
; Clean up any generated files (optional - commented out to preserve user data)
; Type: filesandordirs; Name: "{app}\output"

[Code]
procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpWelcome then
  begin
    WizardForm.WelcomeLabel2.Caption := 
      'This will install {#MyAppName} version {#MyAppVersion} on your computer.' + #13#10#13#10 +
      'Generate citizenship affidavits with ease using professional templates.' + #13#10#13#10 +
      'It is recommended that you close all other applications before continuing.' + #13#10#13#10 +
      'Click Next to continue, or Cancel to exit Setup.';
  end;
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
  if CurStep = ssPostInstall then
  begin
    // Any post-installation tasks can go here
  end;
end;
