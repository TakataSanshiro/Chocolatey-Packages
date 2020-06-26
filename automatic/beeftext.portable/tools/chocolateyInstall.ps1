$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.portable'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v7.1/Beeftext-7.1-PortableEdition.zip'
  checksum       = '921b7e15c9b986133760f779011826adb8650e619d79ae33a587006541c5a198'
  checksumType   = 'sha256'
  softwareName   = 'Beeftext'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
