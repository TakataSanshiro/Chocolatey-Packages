$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v6.3.1/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v6.3.1/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = 'eaf226cb761950a3a87025b9687edeecf01df1f5f029edb0c750d5a9726aead4'
  checksumType   = 'sha256'
  checksum64     = '2ce9a2d2fdb6300810a6f251353a3ad17d23bcae3c1b01fabbb6683c7b79aed0'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
