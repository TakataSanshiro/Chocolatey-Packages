$ErrorActionPreference = 'Stop';

$packageName = 'github-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://desktop.githubusercontent.com/releases/1.0.11-adca8f03/GitHubDesktopSetup.exe'
$checksum = '2814BB326398FB7FEF193416DEA26F2AADA5496BED80EAED75FDABC409A74D69'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -ValidExitCodes "$validExitCodes"
