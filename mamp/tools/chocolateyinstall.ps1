$packageName    = 'mamp'
$installerType  = 'exe'
$url            = 'https://downloads2.mamp.info/MAMP-PRO-WINDOWS/releases/3.3.1/MAMP_MAMP_PRO_3.3.1.exe'
$checksum       = 'BB7D900D692399E11121B88F502AC954828C3D01E7F64BCCC255E4D75EB22783'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "mampInstall.ahk"

Start-Process $ahkExe $ahkFile

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
