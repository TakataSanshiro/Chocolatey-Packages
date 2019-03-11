$packageName    = 'mamp'
$installerType  = 'exe'
$url            = 'https://downloads.mamp.info/MAMP-PRO-WINDOWS/releases/4.1/MAMP_MAMP_PRO_4.1.exe'
$checksum       = '5AF38B47A42484E907B995D9FC05F579E6A22A896D4BEAAEABDC441ACDA54F22'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  softwareName  = 'MAMP*'
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
