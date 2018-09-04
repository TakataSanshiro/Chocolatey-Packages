$ErrorActionPreference = 'Stop';

$packageName = 'quicklook'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/QL-Win/QuickLook/releases/download/0.3.6/QuickLook-0.3.6.msi'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'msi'
  url           = $url
  silentArgs  = "/qn"
  softwareName  = '*quicklook*'
  checksum      = '5D1BC7AEE084AB8997FC413892A4AB3FB964A9D9D8E45B1D4F482DB8590CF009'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
