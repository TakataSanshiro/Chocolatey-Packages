$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.3.3/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.3.3/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = 'e0560cfc358cb13b33d37fb39a022f56925a76eef0bf3053300db9520e43068d'
  checksumType   = 'sha256'
  checksum64     = '3a9e3eeb802ec10ee58970edb79bf5dd163b5cf6dc24fcd9b24d53b890de1f36'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
