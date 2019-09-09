$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-5.3.5/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-5.3.5/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '546199e2bf5bb7880ff2762819525f591d0c82626a4fc1729cfd3ca746415565'
  checksumType   = 'sha256'
  checksum64     = '356002deff774aa4bec1b382b3ac7495a34ee8087e02d29d7e1be73091051b96'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
