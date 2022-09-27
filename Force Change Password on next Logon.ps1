Import-Module MSOnline 	

Connect-MsolService 

write-host "This script will force the user to change thier password apon next login"

Start-Sleep 2  -seconds  

$UPN = Read-Host "Enter the Email address of the azure user"

Set-MsolUserPassword -UserPrincipalName $UPN -ForceChangePasswordOnly $true -ForceChangePassword $true


