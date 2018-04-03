$packageName    = 'mamp'
$installerType  = 'exe'
$url            = 'https://downloads8.mamp.info/MAMP-PRO-WINDOWS/releases/4.0/MAMP_MAMP_PRO_4.0.exe'
$checksum       = '6B36FB7D3E609A90F52374772A2AAB07E4307290E0FAB7B48B36751719569144'
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
