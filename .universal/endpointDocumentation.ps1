New-PSUEndpointDocumentation -Name "User API Docs" -Authentication -Role @('Administrator', 'Operator') -Definition {
    [Documentation()]
    class UserObject {
        [string]$UserName
        [string]$FirstName
        [string]$LastName
    }
} -Url "/user-docs" -ContactEmail "adam@constco.com" -ContactName "Adam Driscoll" -ContactUrl "https://devolutions.net" -Version "1.2.0" -LicenseName "MIT"