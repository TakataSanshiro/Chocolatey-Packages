$ErrorActionPreference = 'Stop';

$packageName = 'quicklook'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/QL-Win/QuickLook/releases/download/3.6.2/QuickLook-3.6.2.msi'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'msi'
  url           = $url
  silentArgs  = "/qn"
  softwareName  = '*quicklook*'
  checksum      = 'F3074EEF7A6604D3981DE8B6E93716A1B3F387B08DFD01E2EE9A8933C5F199BC'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
