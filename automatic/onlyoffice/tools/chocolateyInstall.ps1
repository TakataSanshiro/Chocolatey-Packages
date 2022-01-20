$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.0.0/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.0.0/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = 'd9cc4d9a95676a65b57e4d6f77e3a739bc173f97ccdd1d4a1855b09a15ba5282'
  checksumType   = 'sha256'
  checksum64     = 'b1f8360a20e12ee296b1949d0a7102cd5287c1979b37d1ab0ede4eaa857fa1fe'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
