reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft" /f
reg delete "HKEY_CURRENT_USER\Software\Policies\Microsoft" /f
remove-Item * -force -recurse
gpupdate /force
