$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-5.6.4/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-5.6.4/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '8ef01717851853fb5989e3bb7e6fc593c74c95dc6f853df647d2565a33c7c05a'
  checksumType   = 'sha256'
  checksum64     = '5f7ab1b4cbf0e8ca084769f1404d16fc55e26bec9b0fed938fde7d7ff80692d2'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
