$ErrorActionPreference = 'Stop';

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/12.5.6/tor-expert-bundle-12.5.6-windows-i686.tar.gz'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/12.5.6/tor-expert-bundle-12.5.6-windows-x86_64.tar.gz'
  checksum       = 'f41abcd703a3a9119384b996ff6bd0db204fde3b30adfafee1246c0bbbe4a59d'
  checksum64     = '0db0f8fc6c60fa62b8159468fbb476acf0dec2f8dcf1b9fe7db3b91538334461'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
Get-ChocolateyUnzip -FileFullPath "$toolsDir\*tar" -Destination $toolsDir
Remove-Item $toolsDir\*.tar -ea 0
