for /f %%a in (C:\PSTools\BulkCheckWindowsVersion\a.txt) do (
c:\PSTools\psexec.exe  \\%%a -s  cmd  /c systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"Host Name" /C:"System Type"

)
