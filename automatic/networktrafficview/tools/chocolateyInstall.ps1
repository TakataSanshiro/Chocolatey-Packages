$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'networktrafficview'
  url            = 'https://www.nirsoft.net/utils/networktrafficview.zip'
  url64          = 'https://www.nirsoft.net/utils/networktrafficview-x64.zip'
  checksum       = 'a23d04f4288894fb04faa81b1a80f02b7c5f6107f28ddb264ce28f5e3c3276a5'
  checksum64     = '596665c3f7af49a3daa0eeb146c6ade266a9dd59d59a17ab4ff1e09ee17a4716'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetworkTrafficView*'
}
Install-ChocolateyZipPackage @packageArgs
