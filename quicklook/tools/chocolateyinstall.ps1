$ErrorActionPreference = 'Stop';

$packageName = 'quicklook'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/xupefei/QuickLook/releases/download/0.2.1/QuickLook-0.2.1.msi'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'msi'
  url           = $url
  silentArgs  = "/qn"
  softwareName  = '*quicklook*'
  checksum      = 'C2DB63419AC5DA7B1AAF68A0D351392B3F739EE922CF329CB3A4CB3D27830A0A'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs