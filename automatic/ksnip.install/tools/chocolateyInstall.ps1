$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'msi'
  url            = 'https://github.com/ksnip/ksnip/releases/download/v1.10.0/ksnip-1.10.0.msi'
  checksum       = '8e23535f7fbebd3f2a63add6490524bc76d4774284938de8f83a3ed084d6aaca'
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
