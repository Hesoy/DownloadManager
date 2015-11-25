#define Name "Download Manager"
#define Version
#define Publisher "Hesoy"
#define URL "https://github.com/Hesoy/DownloadManager"
#define ExeName "DownloadManager.exe"

[Setup]
AppId={{873F84B5-1179-4277-9F83-E232E9911EA9}
AppName={#Name}
AppVersion={#Version}
AppPublisher={#Publisher}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#URL}
DefaultDirName={pf}\{#Name}
DefaultGroupName={#Name}
OutputDir=..\Download-Manager\Install\Installer
OutputBaseFileName=setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; 
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; 
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl";

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\Download-Manager\bin\Debug\DownloadManager.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Download-Manager\bin\Debug\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Code]
#include "dotnet.pas"