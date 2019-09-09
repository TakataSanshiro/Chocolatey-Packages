# MSI-uninstallation code from https://groups.google.com/forum/#!searchin/chocolatey/Get-WmiObject|sort:relevance/chocolatey/aQAAh21a6uM/vEzbX1OSrXQJ
$packageWildCard = 'gitg'

$packageUninstallArgsTemplate = @{
    packageName    = 'gitg'
    fileType       = 'msi'
    silentArgs     = '/quiet /qn /norestart'
    validExitCodes = @(0,3010)
}

Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                          'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                 -ErrorAction:SilentlyContinue `
| Where-Object   { $_.DisplayName -like "$packageWildCard*" } `
| ForEach-Object {
    # Adds the found GUID as first argument (used internally by Uninstall-ChocolateyPackage/msiexec)
    $finalUninstallArgs = $packageUninstallArgsTemplate.Clone()
    $finalUninstallArgs.silentArgs = $($_.PSChildName) + " " + $finalUninstallArgs.silentArgs
    Uninstall-ChocolateyPackage @finalUninstallArgs
}