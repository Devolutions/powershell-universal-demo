Invoke-PSUCommand -Command "Start-Process" -Parameters @{
    FilePath = "calc"
} -Hub "Agents" -Integrated