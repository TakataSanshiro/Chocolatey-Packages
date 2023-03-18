$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'msi'
  url            = 'https://github.com/ksnip/ksnip/releases/download/v1.10.1/ksnip-1.10.1.msi'
  checksum       = 'bc7b586f3094b5d762a92f8f36cf267f38d99be5ccf65c3a0dcc221b26cfb110'
  checksumType   = 'sha256'
  silentArgs     = "/qn /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'ksnip'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs

$installLocation = Get-AppInstallLocation $packageArgs.softwareName
if (!$installLocation)  {  Write-Warning "Can't find $PackageName install location"; return }
Write-Host "$packageName installed to '$installLocation'"
Install-BinFile -Path "$installLocation\ksnip.exe" -Name 'ksnip'
