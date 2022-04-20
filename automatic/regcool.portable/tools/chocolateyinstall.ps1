$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'regcool.portable'
  url            = 'https://kurtzimmermann.com/files/RegCoolX32.zip'
  url64          = 'https://kurtzimmermann.com/files/RegCoolX64.zip' 
  checksum       = '4ae1196b519dba4f4213c24f86cac2804f9ab001216c08736f0e0f9df38c4499'
  checksum64     = '93665575c5e46118a9925a818cadafb7466ecc56eb684d37b0b6f7b33c28c069'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegCool.portable'
}
Install-ChocolateyZipPackage @packageArgs
