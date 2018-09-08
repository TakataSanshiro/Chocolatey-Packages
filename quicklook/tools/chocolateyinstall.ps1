$ErrorActionPreference = 'Stop';

$packageName = 'quicklook'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/QL-Win/QuickLook/releases/download/0.3.6.1/QuickLook-0.3.6.1.msi'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'msi'
  url           = $url
  silentArgs  = "/qn"
  softwareName  = '*quicklook*'
  checksum      = '70EF8BC4E552C2BDD02EFF7482E72575677A9238FBC19743485D6EF76ABF399B'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
