$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.5.0/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.5.0/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = 'c77eeb865c566e00cc7269bfe862bdb42cfd70ec05a83d5d49d247bde477892d'
  checksumType   = 'sha256'
  checksum64     = '0b6fd656226e677e9f62177d6be0f8e630250c5f2af6cd8955b4e828ce627ff3'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
