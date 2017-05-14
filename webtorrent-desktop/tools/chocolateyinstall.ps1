$ErrorActionPreference = 'Stop';

$packageName = 'webtorrent-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/webtorrent/webtorrent-desktop/releases/download/v0.18.0/WebTorrentSetup-v0.18.0-ia32.exe'
$url64 = 'https://github.com/webtorrent/webtorrent-desktop/releases/download/v0.18.0/WebTorrentSetup-v0.18.0.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 0B53D6DE17C33C5E87E41D86F3EF8276BE0677B74707E8780594AA6F0BD10FCD -ChecksumType sha256 -checksum64 40F04854CD376AC686689B83E4D6208649493BD20E76E9CDE8CB8700ACEFB1DA -checksumtype64 sha256
