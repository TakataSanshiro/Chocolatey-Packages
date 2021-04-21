$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'regcool.portable'
  url            = 'https://kurtzimmermann.com/files/RegCoolX32.zip'
  url64          = 'https://kurtzimmermann.com/files/RegCoolX64.zip' 
  checksum       = '3038e5ddbde301533cd0cecb72d95f237b3f7a6e5d2ea0a5932e1808b0f1b040'
  checksum64     = 'd7339391bcd35be70b1c3adbbf9b2cb09459fdaa50b34e086a4713f78bf9f604'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegCool.portable'
}
Install-ChocolateyZipPackage @packageArgs
