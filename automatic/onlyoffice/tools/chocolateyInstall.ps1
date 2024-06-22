$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.1.0/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.1.0/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '7037f8f82625e653ecc1f143f1202208559fc16482d9e56ad69d9e08ff56025d'
  checksumType   = 'sha256'
  checksum64     = '2073fe639795e8c5718f6590eed839e0af987299e86556bda867afe69af0d84c'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
