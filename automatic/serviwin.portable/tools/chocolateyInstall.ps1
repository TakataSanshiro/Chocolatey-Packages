$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/serviwin.zip'
  url64          = 'https://www.nirsoft.net/utils/serviwin-x64.zip'
  checksum       = 'd55893fed88422734bf44e0c2b4e38d7d5a03cea9cd3c16a991370d51188c57f'
  checksum64     = 'c0bd7a8667086f00f484a0ac6982b5cf23ac5f0bb8538a1bb6dbfce86c2cbbae'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'serviwin.portable'
}
Install-ChocolateyZipPackage @packageArgs
