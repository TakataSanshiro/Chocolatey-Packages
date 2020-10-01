$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.portable'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v7.2/Beeftext-7.2-PortableEdition.zip'
  checksum       = '1ed567af4fcfe141b7b893b45b08feb38565f4800095e9ebd1cf2608462f4186'
  checksumType   = 'sha256'
  softwareName   = 'Beeftext'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
