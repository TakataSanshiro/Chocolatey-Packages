$ErrorActionPreference = 'Stop';

$packageName    = 'dvdstyler'
$toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType  = 'exe'
$url            = 'https://sourceforge.net/projects/dvdstyler/files/dvdstyler/3.1/DVDStyler-3.1-win32.exe/download'
$checksum       = '45E747A6F0057BEADDF7A5206326EC2A1F7BFC8D73A1FF923352C2E63048A0BB'
$checksumType   = 'sha256'
$url64          = 'https://sourceforge.net/projects/dvdstyler/files/dvdstyler/3.1/DVDStyler-3.1-win64.exe/download'
$checksum64     = '85D91E6C8B17D56E9EC1CAFB2723C889E0220F19EDCE41FCC9B992DB83B8265F'
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
