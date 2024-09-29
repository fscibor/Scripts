
# Import active directory module for running AD cmdlets
Import-Module ActiveDirectory

New-ADOrganizationalUnit -Name "Users_OU" -Path "DC=scibor,DC=net"
New-ADOrganizationalUnit -Name "White_Collars" -Path "OU=Users_OU,DC=scibor,DC=net"
New-ADOrganizationalUnit -Name "Finance" -Path "OU=White_Collars, OU=Users_OU,DC=scibor,DC=net"
New-ADOrganizationalUnit -Name "IT" -Path "OU=White_Collars, OU=Users_OU,DC=scibor,DC=net"
New-ADOrganizationalUnit -Name "HR" -Path "OU=White_Collars, OU=Users_OU,DC=scibor,DC=net"
New-ADOrganizationalUnit -Name "Blue_Collars" -Path "OU=Users_OU,DC=scibor,DC=net"




# Store the data from NewUsersFinal.csv in the $ADUsers variable
$ADUsers = Import-Csv "C:\Share\NewUsersFinal.csv" -Delimiter ";"

# Define UPN
$UPN = "scibor.net"

# Start the SamAccountName numbering from U000001
$counter = 0

# Loop through each row containing user details in the CSV file
foreach ($User in $ADUsers) {
    try {
        # Define the parameters using a hashtable
        $UserParams = @{
            SamAccountName        = "U{0:D6}" -f $counter++
            UserPrincipalName     = "$($User.username)@$UPN"
            Name                  = "U{0:D6}" -f $counter
            GivenName             = $User.firstname
            Surname               = $User.lastname
            Initial               = $User.initials
            Enabled               = $True
            DisplayName           = "$($User.firstname) $($User.lastname)"
            Path                  = $User.ou #This field refers to the OU the user account is to be created in
            City                  = $User.city
            PostalCode            = $User.zipcode
            Country               = $User.country
            Company               = $User.company
            State                 = $User.state
            StreetAddress         = $User.streetaddress
            OfficePhone           = $User.telephone
            EmailAddress          = $User.email
            Title                 = $User.jobtitle
            Department            = $User.department
            AccountPassword       = (ConvertTo-secureString $User.password -AsPlainText -Force)
            ChangePasswordAtLogon = $True
        }

        # Check to see if the user already exists in AD
        if (Get-ADUser -Filter "SamAccountName -eq '$($User.username)'") {

            # Give a warning if user exists
            Write-Host "A user with username $($User.username) already exists in Active Directory." -ForegroundColor Yellow
        }
        else {
            # User does not exist then proceed to create the new user account
            # Account will be created in the OU provided by the $User.ou variable read from the CSV file
            New-ADUser @UserParams

            # If user is created, show message.
            Write-Host "The user $($User.username) is created." -ForegroundColor Green
        }
    }
    catch {
        # Handle any errors that occur during account creation
        Write-Host "Failed to create user $($User.username) - $_" -ForegroundColor Red
    }
}