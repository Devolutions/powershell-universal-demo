New-PSUScript -Name "AccessApi.ps1" -Description "AccessApi.ps1" -Path "AccessApi.ps1" 
New-PSUScript -Name "CacheUsers.ps1" -Description "CacheUsers.ps1" -Tag @('DEV') -Path "CacheUsers.ps1" -Role @('Administrator', 'Operator') 
New-PSUScript -Name "Child.ps1" -Description "Child.ps1" -Path "Child.ps1" 
New-PSUScript -Name "Environment.ps1" -Description "Environment.ps1" -Tag @('DEV') -Path "Environment.ps1" -Role @('Administrator', 'Operator') 
New-PSUScript -Name "Error Script.ps1" -Description "Error Script.ps1" -Path "Error Script.ps1" 
New-PSUScript -Name "Invoke Event.ps1" -Description "Invoke Event.ps1" -Path "Invoke Event.ps1" 
New-PSUScript -Name "NewUserAccount.ps1" -Description "Creates a new user account in the system." -Tag @('HR') -Path "NewUserAccount.ps1" -Role @('Administrator', 'Operator') -PortalOutputType "Text" 
New-PSUScript -Name "Parameters.ps1" -Description "Parameters.ps1" -Path "Parameters.ps1" 
New-PSUScript -Name "Parent.ps1" -Description "Parent.ps1" -Path "Parent.ps1" 
New-PSUScript -Name "Pester.Tests.ps1" -Description "Pester.Tests.ps1" -Path "Pester.Tests.ps1" 
New-PSUScript -Name "ReadHostScript.ps1" -Description "ReadHostScript.ps1" -Path "ReadHostScript.ps1" 
New-PSUScript -Name "RemoveUserAccount.ps1" -Description "Removes a user account." -Tag @('HR') -Path "RemoveUserAccount.ps1" -Role @('Administrator', 'Operator') 
New-PSUScript -Name "Run on error.ps1" -Description "Run on error.ps1" -Path "Run on error.ps1" 
New-PSUScript -Name "StartAgent.ps1" -Description "StartAgent.ps1" -Path "StartAgent.ps1"