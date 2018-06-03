$ErrorActionPreference = 'Stop';

$packageName = 'github-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://desktop.githubusercontent.com/releases/1.2.2-e1bb5d3e/GitHubDesktopSetup.exe'
$checksum = '5BD7B2160789CDE73C55A0E354204DDD87ED712C4806EB6FE8AFCD411BE32FD7'
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
