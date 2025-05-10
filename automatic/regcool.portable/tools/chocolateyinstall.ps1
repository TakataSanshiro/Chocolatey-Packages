$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'regcool.portable'
  url            = 'https://kurtzimmermann.com/files/RegCoolX32.zip'
  url64          = 'https://kurtzimmermann.com/files/RegCoolX64.zip' 
  checksum       = '7C5D43B47A95A2B20B6DDFEDD3EE9AC1E77686AD3CA98DD0BBD8A7CDD640E6D8'
  checksum64     = '5B1A081381AD10D90D441DDDC519285CB7A492C0E87B72647A22AB5657FABCF7'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegCool.portable'
}
Install-ChocolateyZipPackage @packageArgs
