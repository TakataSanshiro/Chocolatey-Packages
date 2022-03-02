$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'msi'
  url            = 'https://github.com/ksnip/ksnip/releases/download/v1.9.2/ksnip-1.9.2.msi'
  checksum       = '50c1930929dbde0e44acc5e70f16d35f44d5cf8ccdd025d79c2c4d8ce160dcea'
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
