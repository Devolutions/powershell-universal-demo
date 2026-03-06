param(
    $Bare,
    [string]$String,
    [DateTime]$DateTime,
    [PSCredential]$Credential,
    [SecureString]$Password,
    [bool]$Bool,
    [Switch]$Switch,
    [int]$Number = 5,
    [string]$DefaultValue = "123"
)

@{
    Bare = $Bare
    String = $String
    DateTime = $DateTime
    Credential = $Credential
    Password = $Password
    Bool = $Bool
    Switch = $Switch
    Number = $Number
    DefaultValue = $DefaultValue
}