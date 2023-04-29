$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'networktrafficview'
  url            = 'https://www.nirsoft.net/utils/networktrafficview.zip'
  url64          = 'https://www.nirsoft.net/utils/networktrafficview-x64.zip'
  checksum       = 'b847de7be98cbf57d45fcf1b09e7c4d9350be6addaff28d5b4c354db504a1c5a'
  checksum64     = '70bd796c5426ffaf161fb4b00e21e22282191e8cc150b26f36bcce79d17cb1da'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetworkTrafficView*'
}
Install-ChocolateyZipPackage @packageArgs
