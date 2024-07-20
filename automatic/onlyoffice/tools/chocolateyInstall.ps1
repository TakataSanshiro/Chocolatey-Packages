$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.1.1/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.1.1/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '9AE0658D8F7D97C0FE9A1B6D09245F5D24B0C4710BDD44E759CED894F88B265E'
  checksumType   = 'sha256'
  checksum64     = 'E762E9AC7DE0C60377FF4AD5E8D2D15126D03ABF725E3E6682D3CC2C9CDED7AF'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
