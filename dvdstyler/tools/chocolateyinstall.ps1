$ErrorActionPreference = 'Stop';

$packageName = 'dvdstyler'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://sourceforge.net/projects/dvdstyler/files/dvdstyler/3.0.4/DVDStyler-3.0.4-win32.exe/download'
$checksum = '0688543975D4472EEFAEFA1A097576360C240939FCD9842ED7C9F677EEB9FE70'
$checksumType = 'sha256'
$url64 = 'https://sourceforge.net/projects/dvdstyler/files/dvdstyler/3.0.4/DVDStyler-3.0.4-win64.exe/download'
$checksum64 = '4E6FBF0B9F33222C14FD1EA186F14E43286B7D38390E15BCB242CA12CDA5E928'
$checksumType64 = 'sha256'
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
