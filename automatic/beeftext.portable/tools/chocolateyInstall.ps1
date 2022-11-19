$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.portable'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v15.0/Beeftext-15.0-PortableEdition.zip'
  checksum       = '9de6d4b9240f42546e71c945ad0d4f0898dbe1c5d376816e5f96ae8d2e35f731'
  checksumType   = 'sha256'
  softwareName   = 'Beeftext'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
