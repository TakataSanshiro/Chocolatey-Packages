$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.2.1/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.2.1/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '70a79be99467335427876f1e6778309e554b952f594a0ec10c23e0e13a930e2f'
  checksumType   = 'sha256'
  checksum64     = 'e188cd747a1423cbbde60eddf3f01a5dc49075869b3215dbb27323ce21b69aa3'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
