$ErrorActionPreference = 'Stop';

$args = '/S'
$pp = Get-PackageParameters
if ($pp['allusers']) { $args = $args + " /allusers" }

$packageArgs = @{
  packageName    = 'tabby'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/tabby/releases/download/v1.0.211/tabby-1.0.211-setup-x64.exe'
  checksum       = '0c2d5689e1d910d27af2ec66fd6f7c618cd12533c39b7c9d978ac7296f4b233d'
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
