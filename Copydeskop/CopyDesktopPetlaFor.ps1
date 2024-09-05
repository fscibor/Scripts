$komp = "PC0134033","PC0134041","PC0134078","PC0147036","PC0156351","PC0156375","PC0156370","PC0171694","PC0171714","PC0171731","PC0171795"



$komp | ForEach {Write-Host $_
if (Test-Connection $_ -Quiet)
{



$userinfo = Get-WmiObject -ComputerName $_ -Class Win32_ComputerSystem
$user = $userinfo.UserName -split '\\'
$cuser=$user[1]





$readfile = "\\$_\c$\Users\$cuser\Desktop\*"
$savepath = "\\danfoss.net\files\Common\Temp_14_days\u385371\$_"





New-Item -ItemType "directory" -Path $savepath





Copy-Item -Path $readfile -Destination $savepath



}
else
{
$offline = "\\danfoss.net\files\Common\Temp_14_days\u385371\Offline\$_"
New-Item -ItemType "directory" -Path $offline
}



}


