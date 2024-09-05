$komp = "PC0233449"

if (Test-Connection $komp -Quiet)
{

$userinfo = Get-WmiObject -ComputerName $komp -Class Win32_ComputerSystem
$user = $userinfo.UserName -split '\\'
$cuser=$user[1]



$readfile = "\\$komp\c$\Users\$cuser\Desktop\*"
$savepath = "\\danfoss.net\files\Common\Temp_14_days\labelinterface\$komp"



New-Item -ItemType "directory" -Path $savepath



Copy-Item -Path $readfile -Destination $savepath

}
else
{
$offline = "\\danfoss.net\files\Common\Temp_14_days\labelinterface\Offline\$komp"
New-Item -ItemType "directory" -Path $offline
}