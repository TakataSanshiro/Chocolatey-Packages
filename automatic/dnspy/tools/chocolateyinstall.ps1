$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'dnspy'
  url            = 'https://github.com/dnSpy/dnSpy/releases/download/v6.1.8/dnSpy-net-win32.zip'
  checksum       = '3cb7340b5b0b250a5b8d6cbf45bee4355be09c9a4d4fe2b2fac9abd5c7b95efd'
  checksumType   = 'sha256'
  url64          = 'https://github.com/dnSpy/dnSpy/releases/download/v6.1.8/dnSpy-net-win64.zip'
  checksum64     = '78d855aef02d87195ddde4f4a89f16f03708e66ec8282cf8eb9ecc89dd469f6c'
  checksumType64 = 'sha256'
  softwareName   = 'dnSpy'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
