$ErrorActionPreference = 'Stop';

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/13.0.8/tor-expert-bundle-windows-i686-13.0.8.tar.gz'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/13.0.8/tor-expert-bundle-windows-x86_64-13.0.8.tar.gz'
  checksum       = 'f4ba15c89b95c9c6cc088b2c11c268a2a2353f26ac9fb7b59837110209fbab76'
  checksum64     = '4d304f915c11b7e168342043d9db3cdbf157747be0bc42d67ea0b91ef9ec492f'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
Get-ChocolateyUnzip -FileFullPath "$toolsDir\*tar" -Destination $toolsDir
Remove-Item $toolsDir\*.tar -ea 0
