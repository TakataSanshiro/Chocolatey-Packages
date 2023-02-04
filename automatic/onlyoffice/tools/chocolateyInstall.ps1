$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.3.0/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.3.0/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '20842e15f35a5ec1386201f251f097b5d1c222a0f940289187ffe8270a238fa4'
  checksumType   = 'sha256'
  checksum64     = '66f92a671c1dfde943de33c0d61de042da78b2508c1d0019eed7ed0b6589db9d'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
