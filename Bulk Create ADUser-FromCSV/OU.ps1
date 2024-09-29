Import-Module ActiveDirectory


New-ADOrganizationalUnit -Name "Users_OU" -Path "DC=scibor,DC=net"


New-ADOrganizationalUnit -Name "White_Collars" -Path "OU=Users_OU,DC=scibor,DC=net"

New-ADOrganizationalUnit -Name "Finance" -Path "OU=White_Collars, OU=Users_OU,DC=scibor,DC=net"
New-ADOrganizationalUnit -Name "IT" -Path "OU=White_Collars, OU=Users_OU,DC=scibor,DC=net"
New-ADOrganizationalUnit -Name "HR" -Path "OU=White_Collars, OU=Users_OU,DC=scibor,DC=net"

New-ADOrganizationalUnit -Name "Blue_Collars" -Path "OU=Users_OU,DC=scibor,DC=net"


