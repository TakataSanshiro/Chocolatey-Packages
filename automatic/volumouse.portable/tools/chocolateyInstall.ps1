$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/volumouse.zip'
  url64          = 'https://www.nirsoft.net/utils/volumouse-x64.zip'
  checksum       = 'b64bd32b697d36f2435227fdf728ef844437cedaaea1ed016e82fc4ec03aa744'
  checksum64     = 'b28aea3c7321936a9bc6cec09d445477dd0bfb3cf3b0c31c149210d40d266a98'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'volumouse.portable'
}
Install-ChocolateyZipPackage @packageArgs
