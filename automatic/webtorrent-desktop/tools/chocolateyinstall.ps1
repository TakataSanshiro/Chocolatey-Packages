$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'webtorrent-desktop'
  installerType    = 'exe'
  url              = 'https://github.com/webtorrent/webtorrent-desktop/releases/download/v0.24.0/WebTorrentSetup-v0.24.0.exe'
  checksum         = '08b97a6a4b5999bd0f0c2f0eb368eb938a16c373999b672db24ea89664d35714'
  checksumType     = 'sha256'
  silentArgs       = '/VERYSILENT'
  validExitCodes   = @(0)
  softwareName     = 'webtorrent-desktop'
}

$is64bit = Get-ProcessorBits 64
if ($is64bit) {
  Install-ChocolateyPackage @packageArgs
}
else {
  Write-Host 'Sadly, this application is 64bit only'
}
