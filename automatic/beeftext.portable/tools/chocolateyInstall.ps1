$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.portable'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v6.2/Beeftext-6.2-PortableEdition.zip'
  checksum       = '088aea6b95a833217ec03f184bcb483dbf208e5c6c8be2c28c4d69189d43cb55'
  checksumType   = 'sha256'
  softwareName   = 'Beeftext'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
