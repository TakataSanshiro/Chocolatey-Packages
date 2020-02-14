$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'webtorrent-desktop'
  installerType    = 'exe'
  url              = 'https://github.com/webtorrent/webtorrent-desktop/releases/download/v0.21.0/WebTorrentSetup-v0.21.0.exe'
  checksum         = 'b0c01cf67c5800979724f37b831ea20b80f2350a707f769b92f0c4bb46f15657'
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
