$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/networklatencyview.zip'
  url64          = 'https://www.nirsoft.net/utils/networklatencyview-x64.zip'
  checksum       = 'e9e82c252435f7e6c82e0342934cafed7929e1ad6ca0e6a760550b288433d939'
  checksum64     = '7fcd1b49aaab0eb5164f878c8fc7c4e7c6f126f9a6ab615e9bf386a2b26e4f97'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetworkLatencyView'
}
Install-ChocolateyZipPackage @packageArgs
