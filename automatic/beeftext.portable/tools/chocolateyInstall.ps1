$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.portable'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v12.0/Beeftext-12.0-PortableEdition.zip'
  checksum       = 'bc57405531799f18f58781b0a547c0fa82296762f5b43b01ef1358ffdb3fccb2'
  checksumType   = 'sha256'
  softwareName   = 'Beeftext'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
