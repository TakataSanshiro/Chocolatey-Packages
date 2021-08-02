$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.portable'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v10.0/Beeftext-10.0-PortableEdition.zip'
  checksum       = '3ac37d16bdc03ce0c592060c992ffdc8c7306aa0f2014644af194a6db489fc30'
  checksumType   = 'sha256'
  softwareName   = 'Beeftext'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
