$ErrorActionPreference = 'Stop';

$args = '/S'
$pp = Get-PackageParameters
if ($pp['allusers']) { $args = $args + " /allusers" }

$packageArgs = @{
  packageName    = 'tabby'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/tabby/releases/download/v1.0.167/tabby-1.0.167-setup.exe'
  checksum       = 'c7d39a5c16edc5e0423022485961a0cebe485f442521b39a65754b4b1f280c9e'
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
