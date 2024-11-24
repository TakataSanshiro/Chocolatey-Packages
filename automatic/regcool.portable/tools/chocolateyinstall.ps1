$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'regcool.portable'
  url            = 'https://kurtzimmermann.com/files/RegCoolX32.zip'
  url64          = 'https://kurtzimmermann.com/files/RegCoolX64.zip' 
  checksum       = '50528C5C9A05C5E735ADE08B027F7FF4A2E24B86B56093857E55966E24F28072'
  checksum64     = 'EC60714AD50528AFE760B03AD6EF3825C9A18B6C0BB6FC98191DB6A2F7BAEA62'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegCool.portable'
}
Install-ChocolateyZipPackage @packageArgs
