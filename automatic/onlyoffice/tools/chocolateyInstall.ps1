$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.2.0/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.2.0/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '8a4c9c2b0ce91cb9391d1db043accc0a12077eb5e2c6bcfe2a6a91acdd326837'
  checksumType   = 'sha256'
  checksum64     = 'eca9cc6eefc57f1b97152ec5154d4a4e5733cf82a7b26f5a1c2ec6342029c22d'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
