$ErrorActionPreference = 'Stop';

$packageName = 'webtorrent-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/webtorrent/webtorrent-desktop/releases/download/v0.20.0/WebTorrentSetup-v0.20.0-ia32.exe'
$checksum = '985D5EC6658627A3DD0A65767406677562E61722253B04956BC8BACC4776CEAF'
$checksumType = 'sha256'
$url64 = 'https://github.com/webtorrent/webtorrent-desktop/releases/download/v0.20.0/WebTorrentSetup-v0.20.0.exe'
$checksum64 = '0FD0DEDDC7EC34DEEDC298B831156578C0BCC5D66FA99F6FCA3131BE4BC3F3DE'
$checksumType64 = 'sha256'
$silentArgs = '/VERYSILENT'
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