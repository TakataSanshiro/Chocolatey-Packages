$ErrorActionPreference = 'Stop';

$packageName    = 'vpnarea'
$installerType  = 'exe'
$url            = 'https://vpnarea.com/VPNArea.exe'
$checksum       = '995FF02E2A4B0B706C4DBDDC3F9C874F748261A228C4B72CDCA0BD75D39B9CF7'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/S'
$validExitCodes = @(0)

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  softwareName  = 'vpnarea*'
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
