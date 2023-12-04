$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/networklatencyview.zip'
  url64          = 'https://www.nirsoft.net/utils/networklatencyview-x64.zip'
  checksum       = 'bc5089f4035568e1999248e5d907e43bc4488e74b10f0bbc3b546bd8d7fc73b0'
  checksum64     = '17bb451f31e28c89f04b7e7b6d7c09efbb11d28d6ebd7215e89397eb82bf1773'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetworkLatencyView'
}
Install-ChocolateyZipPackage @packageArgs
