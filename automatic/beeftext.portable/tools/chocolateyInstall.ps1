$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.portable'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v11.0/Beeftext-11.0-PortableEdition.zip'
  checksum       = 'b7730238f7f2bb8720f1cee43161db306d95e7412bb77e94385e6ab1bb7c562f'
  checksumType   = 'sha256'
  softwareName   = 'Beeftext'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
