$userinfo = Get-WmiObject -ComputerName PC0171840 -Class Win32_ComputerSystem
$user = $userinfo.UserName -split '\\'
$user[1]
