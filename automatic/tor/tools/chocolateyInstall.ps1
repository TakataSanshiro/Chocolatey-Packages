$ErrorActionPreference = 'Stop';

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/12.5.4/tor-expert-bundle-12.5.4-windows-i686.tar.gz'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/12.5.4/tor-expert-bundle-12.5.4-windows-x86_64.tar.gz'
  checksum       = 'd57648fffd074c690c2f30121e36cb2f0f0c5b4a972777a936bfe5ab52459837'
  checksum64     = 'c40cc384b8e7a32a35d649bc64041638d428b5a13105995ef3a611cb7312e51d'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
Get-ChocolateyUnzip -FileFullPath "$toolsDir\*tar" -Destination $toolsDir
Remove-Item $toolsDir\*.tar -ea 0
