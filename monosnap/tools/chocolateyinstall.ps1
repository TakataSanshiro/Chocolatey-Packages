$ErrorActionPreference = 'Stop';

$packageName    = 'monosnap'
$installerType  = 'msi'
$url            = 'https://static.monosnap.com/windows/Monosnap.4.0.9.msi?web'
$checksum       = '62B0B44F88A76A2C1997C538A6BCE7F6ED1AFA002FABE4EC0386D81134027862'
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