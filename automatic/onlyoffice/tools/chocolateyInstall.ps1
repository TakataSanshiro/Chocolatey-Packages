$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.1.1/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.1.1/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '1a12a9ed583a14d3ee9e54b792c5a8583ebe6ca19ff70937c148be365a8f7cef'
  checksumType   = 'sha256'
  checksum64     = '96a3d42c55e7150d5440524d5abdae04356f0154ba26a244914b8d482a31ab66'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
