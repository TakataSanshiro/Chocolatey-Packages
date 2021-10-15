$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-3.1-06756.exe'
  checksum       = '8b5b2403cbf10b1b04bbef12b9364753d43c119fde05879547e187e2977d87f9'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-3.1-06756.exe'
  checksum64     = '4217a60a3fe0cf58c21f7786002231fcd23fa3629b03efdf5a64d41bf22484fb'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
