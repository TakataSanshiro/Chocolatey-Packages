$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.portable'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v14.0/Beeftext-14.0-PortableEdition.zip'
  checksum       = '58f6a7ed9ec374023780061bf0a1dc33746c240dd0dbd690bfebd70752625053'
  checksumType   = 'sha256'
  softwareName   = 'Beeftext'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
