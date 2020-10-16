$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-6.0.0/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-6.0.0/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '2fa4b7d2150ba0533134c9b42f4d4d0afa6a74ddff7de0c47fb268dd579ca3ad'
  checksumType   = 'sha256'
  checksum64     = 'bd81e2224c11005bdae26f01c58e3588835d5a12ca530e841caeac6a7320b1e2'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
