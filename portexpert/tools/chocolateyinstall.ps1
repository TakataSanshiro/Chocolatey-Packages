$ErrorActionPreference = 'Stop';

$packageName = 'portexpert'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://kcsoftwares.com/files/portexpert_lite.exe'
$checksum = '0C34A6B2044D5CFB9236D0FC9CD9A706D5603DB94B63804C1378A85C236FE58C'
$checksumType = 'sha256'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -Url64bit "$url64" `
  -Checksum64 "$checksum64" `
  -ChecksumType64 "$checksumType64" `
  -ValidExitCodes "$validExitCodes"
