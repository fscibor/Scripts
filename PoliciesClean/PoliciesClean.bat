reg delete "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Internet Explorer" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Biometrics" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\CCM" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Messenger" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Microsoft Antimalware" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\office" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\OneDrive" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\PCHealth" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Power" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SearchCompanion" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SQMClient" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SystemCertificates" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore" /f
reg delete "HKEY_CURRENT_USER\Software\Policies\Microsoft\SystemCertificates" /f
reg delete "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies" /f /va
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Group Policy" /f /va
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Group Policy" /f
cd C:\ProgramData\Microsoft\Group Policy\History
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""\\yourserver\ps.ps1""' -Verb RunAs}"
Powershell.exe -executionpolicy 


