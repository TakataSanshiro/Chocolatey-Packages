$packageName    = 'mamp'
$installerType  = 'exe'
$url            = 'https://downloads10.mamp.info/MAMP-PRO-WINDOWS/releases/4.0.1/MAMP_MAMP_PRO_4.0.1.exe'
$checksum       = '077a1607141eb0df09c819fb9721b39229c6ec07e7fa5fe92f490e9060f01b59'
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
