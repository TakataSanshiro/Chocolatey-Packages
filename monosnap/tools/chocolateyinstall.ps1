$ErrorActionPreference = 'Stop';

$packageName    = 'monosnap'
$installerType  = 'msi'
$url            = 'https://static.monosnap.com/windows/Monosnap.4.0.8.msi?web'
$checksum       = '8392CB3D37C52A5D1AD9BB99EBC580134428AFEB123607296AB0B0D6C15139DA'
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