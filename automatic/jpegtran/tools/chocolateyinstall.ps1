$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'jpegtran'
  url            = 'https://jpegclub.org/jpegtran.zip'
  checksum       = '5ADA2545E5F0703D6D1C5EADCBDF8A49C00B8023F6B1DCEB66E421A9B599D717'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'jpegtran*'
}
Install-ChocolateyZipPackage @packageArgs
