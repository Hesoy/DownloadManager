#define Name "Download Manager"
#define Version "0.0.0.1"
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
OutputDir=D:\DownloadManagerSetup
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
Source: "..\Download-Manager\bin\Release\DownloadManager.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Download-Manager\bin\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "dotNetFx40_Full_x86_x64.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall; Check: not IsRequiredDotNetDetected

[Code]
#include "dotnet.pas"