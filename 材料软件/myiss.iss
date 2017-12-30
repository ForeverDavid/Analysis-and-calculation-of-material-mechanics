; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

#define MyAppName "�����������㾫��"
#define MyAppVersion "1.0"
#define MyAppPublisher "���ǽ�"
#define MyAppExeName "�������.exe"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|��IDE������GUID��)
AppId={{5F1F3CA2-9E1A-44AD-83DE-C204D70BFA55}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=F:\Visual Studio 2017\Projects\�������\�������\����ļ�.txt
InfoBeforeFile=F:\Visual Studio 2017\Projects\�������\�������\��װǰ��Ϣ.txt
InfoAfterFile=F:\Visual Studio 2017\Projects\�������\�������\��װ����Ϣ.txt
OutputDir=F:\Visual Studio 2017\Projects\�������
OutputBaseFilename=�����������㾫��
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"
Name: "english"; MessagesFile: "compiler:Languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "F:\Visual Studio 2017\Projects\�������\�������\bin\Debug\�������.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\Visual Studio 2017\Projects\�������\�������\bin\Debug\AGI.STKX.Interop.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\Visual Studio 2017\Projects\�������\�������\bin\Debug\AxInterop.AGI.STKX.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\Visual Studio 2017\Projects\�������\�������\bin\Debug\db1.mdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\Visual Studio 2017\Projects\�������\�������\bin\Debug\db2.mdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\Visual Studio 2017\Projects\�������\�������\bin\Debug\db3.mdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\Visual Studio 2017\Projects\�������\�������\bin\Debug\texture1.bmp"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\Visual Studio 2017\Projects\�������\�������\bin\Debug\texture2.jpg"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\Visual Studio 2017\Projects\�������\�������\bin\Debug\�������.exe.CodeAnalysisLog.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\Visual Studio 2017\Projects\�������\�������\bin\Debug\�������.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\Visual Studio 2017\Projects\�������\�������\bin\Debug\�������.exe.lastcodeanalysissucceeded"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\Visual Studio 2017\Projects\�������\�������\bin\Debug\�������.pdb"; DestDir: "{app}"; Flags: ignoreversion
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
Root:HKCU;Subkey:"Software\HIT";Flags:uninsdeletekeyifempty
