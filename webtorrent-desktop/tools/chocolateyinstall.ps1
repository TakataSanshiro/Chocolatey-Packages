$ErrorActionPreference = 'Stop';

$packageName = 'webtorrent-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/webtorrent/webtorrent-desktop/releases/download/v0.19.0/WebTorrentSetup-v0.19.0-ia32.exe'
$checksum = 'E1D29517F9E15C593669A632FDB48606727CC1DFC37D9C7ADAF95D810B3BE562'
$checksumType = 'sha256'
$url64 = 'https://github.com/webtorrent/webtorrent-desktop/releases/download/v0.19.0/WebTorrentSetup-v0.19.0.exe'
$checksum64 = '5E682F62D55380C9632C2724DE5BC80D8D101BE5DF35C3CC1F519A167C6F15F4'
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