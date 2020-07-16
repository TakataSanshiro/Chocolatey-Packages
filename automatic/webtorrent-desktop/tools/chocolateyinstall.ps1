$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'webtorrent-desktop'
  installerType    = 'exe'
  url              = 'https://github.com/webtorrent/webtorrent-desktop/releases/download/v0.23.0/WebTorrentSetup-v0.23.0.exe'
  checksum         = 'c989221c4d57cb75f9b82f2d40ef895f0db84d74b8df4a466b77dd39a118bb51'
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
