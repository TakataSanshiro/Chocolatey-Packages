$ErrorActionPreference = 'Stop';

$args = '/S'
$pp = Get-PackageParameters
if ($pp['allusers']) { $args = $args + " /allusers" }

$packageArgs = @{
  packageName    = 'tabby'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/tabby/releases/download/v1.0.215/tabby-1.0.215-setup-x64.exe'
  checksum       = '9c4461d30893590dee034bfa33ba959f7c5abf7c55b0fdb2d38a050d1b9afd9f'
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
