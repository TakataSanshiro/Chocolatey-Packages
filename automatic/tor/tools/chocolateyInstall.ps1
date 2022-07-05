$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/11.0.15/tor-win32-0.4.7.8.zip'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/11.0.15/tor-win64-0.4.7.8.zip'
  checksum       = '70b023e5647aefcf5a76a611b608d1288ca496d790a6ec6dc06a22a4a52c2962'
  checksum64     = '14115567eb9674c79481509ac97d4a7b76c80a36966dd9864989a96670440757'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
