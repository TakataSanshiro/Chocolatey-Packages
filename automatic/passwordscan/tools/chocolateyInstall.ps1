$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/passwordscan.zip'
  url64          = 'https://www.nirsoft.net/utils/passwordscan-x64.zip'
  checksum       = '144941fdbdff3d77d3cdf613d9cd9ddc0b1c40537cd9b1320f2b4007b37abd86'
  checksum64     = '01a6c89e8910f494adf2cf99ba392e87b612020ed130e6339c2a3755e21f3816'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'Password Security Scanner'
}
Install-ChocolateyZipPackage @packageArgs
