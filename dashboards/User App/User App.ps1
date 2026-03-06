New-UDApp -Content {
    New-UDTabs -Tabs {
        New-UDTab -Text "New User" -Content {
            New-UDForm -Content {
                New-UDTextbox -Id 'UserName' -Label "User Name"
                New-UDTextbox -Id 'FirstName' -Label "First Name"
                New-UDTextbox -Id 'LastName' -Label "Last Name"
            } -OnSubmit {
                Invoke-PSUScript -Name 'NewUserAccount.ps1' -FirstName $Eventdata.FirstName -LastName $EventData.LastName -UserName $EventData.UserName -Wait | Out-Null
                Show-UDToast -Message "User added!"
            }
        }
        New-UDTab -Text "Remove User" -Content {
            New-UDForm -Content {
                New-UDTextbox -Id 'UserName' -Label "User Name"
            } -OnSubmit {
                Invoke-PSUScript -Name 'RemoveUserAccount.ps1' -UserName $EventData.UserName -Wait | Out-Null
                Show-UDToast -Message "User removed!"
            }
        }
    }
 }