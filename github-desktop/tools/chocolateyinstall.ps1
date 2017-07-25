$ErrorActionPreference = 'Stop';

$packageName = 'github-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://desktop.githubusercontent.com/releases/0.7.0-bd9a4024/GitHubDesktopSetup.exe'
$checksum = '3EBAF63E6384FC184D0D6CEEE1AEFAB7462BAA51D398D0A8766FD7B5A172E07B'
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
