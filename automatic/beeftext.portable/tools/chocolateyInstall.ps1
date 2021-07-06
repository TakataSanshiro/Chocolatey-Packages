$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.portable'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v9.0/Beeftext-9.0-PortableEdition.zip'
  checksum       = '04cc01395c3c638f1379e80e969e7d5c4143fd17fc35dfd2b0cef5d0e623bd79'
  checksumType   = 'sha256'
  softwareName   = 'Beeftext'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
