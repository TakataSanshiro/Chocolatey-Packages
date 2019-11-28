$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-5.4.2/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-5.4.2/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '871cac65e4443d53972d47b1d2a62be03f980bf20728037bf6a1a2a3322a33eb'
  checksumType   = 'sha256'
  checksum64     = '861e79f872759b42d724dc17effa598de51b321cad861b3993767966caf8edb8'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
