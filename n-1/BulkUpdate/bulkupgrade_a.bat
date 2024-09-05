for /f %%a in (C:\PSTools\BulkUpdate\a.txt) do (
c:\PSTools\psexec.exe  \\%%a -s -d cmd  /c "\\servername\install$\Windows 10 ISOs\Windows1021H1\21H1.bat"

)
