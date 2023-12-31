$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'regcool.portable'
  url            = 'https://kurtzimmermann.com/files/RegCoolX32.zip'
  url64          = 'https://kurtzimmermann.com/files/RegCoolX64.zip' 
  checksum       = '644E68182916D9FF1E43D177BB1121E7CCB2E877595E42FFE146FE8D19E98120'
  checksum64     = '0BC6A5517DEDA2B0D26CE68C404EDDF9F9FB3F46E5BC4D18D5BA611195E5FD06'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegCool.portable'
}
Install-ChocolateyZipPackage @packageArgs
