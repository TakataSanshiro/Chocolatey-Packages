$ErrorActionPreference = 'Stop';

$packageName = 'devdocs-app'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/egoist/devdocs-desktop/releases/download/v0.6.4/DevDocs-Setup-0.6.4.exe'
$checksum = '09AF430199E2C4967648E78691FD96992B3254593A96529AF64D04CB8F805EA9'
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
