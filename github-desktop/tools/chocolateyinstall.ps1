$ErrorActionPreference = 'Stop';

$packageName = 'github-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://desktop.githubusercontent.com/releases/1.3.5-77f023f8/GitHubDesktopSetup.exe'
$checksum = '0B8817AC3F8EE514E35373B294D5525FCDB5780CA8A7ED6B8E6862FE30ACC3A9'
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
