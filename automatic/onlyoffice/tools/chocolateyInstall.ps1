$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.2.1/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.2.1/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = 'b0fb6555a9d943dc07956fc329001e41528999832c89bb92e3ee43877233cda8'
  checksumType   = 'sha256'
  checksum64     = 'd9e6232c721de3a43718e5f00005fa388bc9275c4cf2a9ba146500d10461c9a6'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
