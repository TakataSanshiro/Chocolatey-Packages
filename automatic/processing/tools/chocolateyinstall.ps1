$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'processing'
  url            = 'https://github.com/processing/processing4/releases/download/processing-1297-4.3.4/processing-4.3.4-windows-x64.zip'
  checksum       = 'fd7ccc686ffc2f3a9116c3eb45fd7a5fab510c7c9ff67af215dbbed30642a98f'
  checksumType   = 'sha256'
  softwareName   = 'Processing*'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
