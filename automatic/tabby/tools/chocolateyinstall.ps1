﻿$ErrorActionPreference = 'Stop';

$args = '/S'
$pp = Get-PackageParameters
if ($pp['allusers']) { $args = $args + " /allusers" }

$packageArgs = @{
  packageName    = 'tabby'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/tabby/releases/download/v1.0.208/tabby-1.0.208-setup-x64.exe'
  checksum       = '7359a3244aeb1fa7c5b68373d3d3cedc725bd91e1d7d7fae5c527bd63d914e7f'
  checksumType   = 'sha256'
  silentArgs     = $args
  validExitCodes = @(0)
  softwareName   = 'Tabby*'
}
Install-ChocolateyPackage @packageArgs


$installLocation = Get-AppInstallLocation $packageArgs.softwareName
if (!$installLocation)  {  Write-Warning "Can't find $PackageName install location"; return }

Write-Host "$packageName installed to '$installLocation'"
Install-BinFile -Path "$installLocation\Tabby.exe" -Name 'tabby'
