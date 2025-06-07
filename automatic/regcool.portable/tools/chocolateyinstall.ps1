$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'regcool.portable'
  url            = 'https://kurtzimmermann.com/files/RegCoolX32.zip'
  url64          = 'https://kurtzimmermann.com/files/RegCoolX64.zip' 
  checksum       = '17F08D6B81167258230CEC8F9215748DB1DA970054C849437561D14ED3A23BCB'
  checksum64     = '084E6766BF4ACCE3FFF319C096EBC8EA8ED3FC85E324E66AC1C8F83911D0A01B'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegCool.portable'
}
Install-ChocolateyZipPackage @packageArgs
