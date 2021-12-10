$ErrorActionPreference = 'Stop';

$packageName    = 'dvdstyler'
$toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType  = 'exe'
$url            = 'https://sourceforge.net/projects/dvdstyler/files/dvdstyler/3.2.1/DVDStyler-3.2.1-win32.exe/download'
$checksum       = '1E8482DFC9857BFCF7BCB60245EDEC178FC496B78D07DD4309548B67F0ECF0F1'
$checksumType   = 'sha256'
$url64          = 'https://sourceforge.net/projects/dvdstyler/files/dvdstyler/3.2.1/DVDStyler-3.2.1-win64.exe/download'
$checksum64     = '99B74055E9B5CCEAE29B153158563E454905531C966F3CDBE98EA390A6A0E713'
$checksumType64 = 'sha256'
$silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
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
