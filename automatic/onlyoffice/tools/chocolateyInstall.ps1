$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.5.1/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.5.1/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = 'bc68545dd588d996a3e5ed025085b5099d4df81042c6edf0e3596d1abb561a3c'
  checksumType   = 'sha256'
  checksum64     = '2b7ce692031d76b6f3221f399036a77d9e6415d2c9c67aaf138ebbb8ab070ca0'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
