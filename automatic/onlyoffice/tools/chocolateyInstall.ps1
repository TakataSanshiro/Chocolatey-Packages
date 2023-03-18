$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.3.3/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.3.3/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '20c71cf8099e89f0f013b9c062fbb7bcd94a9a95ee9761acbd7dafb729896d5c'
  checksumType   = 'sha256'
  checksum64     = '141bcfd86fd7802813aec3ba7a76296a5b40ff5aa8c4af99005a956a4f725d03'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
