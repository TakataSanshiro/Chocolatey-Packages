$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'msi'
    url            = 'https://downloads.iridiumbrowser.de/windows/2023.09.116/iridiumbrowser-2023.09.116.0-x86.msi'
    url64bit       = 'https://downloads.iridiumbrowser.de/windows/2023.09.116/iridiumbrowser-2023.09.116.0-x64.msi'
    checksum       = '63afcb9949977ef83c41b93c85d3e0bb7382614e53f658e18ec7a3bac013fd59'
    checksum64     = '9862541dc4419d730954bb22f8f3f77355e1107a25efa86a1131e343930386b4'
    checksumType   = 'sha256'
    checksumType64 = 'sha256'
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
}

Install-ChocolateyPackage @packageArgs

Get-ChildItem $toolsDir\*.msi | ForEach-Object { Remove-Item $_ -ea 0; if (Test-Path $_) { Set-Content "$_.ignore" } }
