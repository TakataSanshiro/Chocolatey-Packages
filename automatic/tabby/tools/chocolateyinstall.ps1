$ErrorActionPreference = 'Stop';

$args = '/S'
$pp = Get-PackageParameters
if ($pp['allusers']) { $args = $args + " /allusers" }

$packageArgs = @{
  packageName    = 'tabby'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/tabby/releases/download/v1.0.220/tabby-1.0.220-setup-x64.exe'
  checksum       = '8b6749a5f8f7995840c8d918ee8c1407cc1af4025ca5a073779336685503c6c5'
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
