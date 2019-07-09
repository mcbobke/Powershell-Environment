Write-Verbose -Message "Copying profile to [$($Profile.AllUsersAllHosts)]" -Verbose
$ProfileParams = @{
    Path        = '.\profile.ps1';
    Destination = $Profile.AllUsersAllHosts;
    Force       = $true;
}
Copy-Item @ProfileParams | Out-Null

Write-Verbose -Message "Copying helper scripts to [$Env:SystemDrive\psenv]" -Verbose
$ScriptsParams = @{
    Path = ".\import\*"
    Destination = "$Env:SystemDrive\psenv\import"
    Recurse = $true
    Force = $true
}
Copy-Item @ScriptsParams | Out-Null