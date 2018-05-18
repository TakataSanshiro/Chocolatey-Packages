$ErrorActionPreference = 'Stop';

$packageName    = 'monosnap'
$installerType  = 'msi'
$url            = 'http://static.monosnap.com/windows/Monosnap.3.6.36.msi?9807'
$checksum       = 'AEBCB851B38626BFFD4ABC4426800646C365079C734BD28B0B0D5743A2FE30F3'
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