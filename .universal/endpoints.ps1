New-PSUEndpoint -Url "/api/user" -Method @('POST') -Endpoint {
    <#
.SYNOPSIS
An API for creating a user.

.PARAMETER FirstName
The first name of the user.

.PARAMETER LastName
The last name of the user.

.PARAMETER UserName
The user name of the user.

.INPUTS
  Required: false
  Description: The user to create.
  Content:
      application/json: UserObject 
#>
    param($UserName, $FirstName, $LastName)

    Invoke-PSUScript -Name "NewUserAccount.ps1" -FirstName $FirstName -LastName $LastName -UserName $UserName -Wait
} -Authentication -Role @('Administrator') -Documentation "User API Docs" 
New-PSUEndpoint -Url "/api/user" -Method @('GET') -Endpoint {
    Get-PSUCache -Integrated -Key "Users"
} -Authentication -Documentation "User API Docs"