$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.portable'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v16.0/Beeftext-16.0-PortableEdition.zip'
  checksum       = '4a64ed2bf2ea8a853dad4fb5453e058bd01287d9ed09185ec02e0d5f81f8018d'
  checksumType   = 'sha256'
  softwareName   = 'Beeftext'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
