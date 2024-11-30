$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.2.2/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.2.2/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '5eda3831194743c23f54d880891065252fcd2eac11d43232b2dcfb57ba16eec4'
  checksumType   = 'sha256'
  checksum64     = 'a0035183348920f6e732d3acee36c3297dfb9aca0f6fc0acbd1b8ea142c75fb9'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
