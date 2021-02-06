$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.portable'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v8.1/Beeftext-8.1-PortableEdition.zip'
  checksum       = '1bdc395c78aa756c3cf83ee18901662cae132d6347d7c6f8bf4bd2e1b3346590'
  checksumType   = 'sha256'
  softwareName   = 'Beeftext'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
