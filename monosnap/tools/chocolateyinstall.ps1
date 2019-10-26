$ErrorActionPreference = 'Stop';

$packageName    = 'monosnap'
$installerType  = 'msi'
$url            = 'https://static.monosnap.com/windows/Monosnap.4.0.10.msi?web'
$checksum       = '6A3F16B714888E34F9F82F07E78541D7031C20D6AEA53D2C3456B70037723E20'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/quiet'
$validExitCodes = @(0)

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  softwareName  = 'monosnap*'
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs