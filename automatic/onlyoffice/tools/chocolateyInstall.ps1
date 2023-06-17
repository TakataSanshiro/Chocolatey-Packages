$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.4.0/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.4.0/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '2d5b50e378405acc1691257c0db2cc1bef39034fbcd4f3fe8d75ffed1f611d29'
  checksumType   = 'sha256'
  checksum64     = 'dc36f5b4f66d11802661e77b80b292e34dc04074873b92a826f2e5e654259398'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
