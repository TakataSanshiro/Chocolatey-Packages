$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.portable'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v7.0/Beeftext-7.0-PortableEdition.zip'
  checksum       = 'eec2add0d43655f5d104d59adfa9700a1c38b3913a0e8c3d068e9729ff4f99d9'
  checksumType   = 'sha256'
  softwareName   = 'Beeftext'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
