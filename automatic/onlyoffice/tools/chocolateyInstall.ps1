$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.3.1/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.3.1/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '77ff2e3d43f94be8ab2884db9a77ae314ce8cdbfbf81ec3df07e66e69f7451c2'
  checksumType   = 'sha256'
  checksum64     = '88b52a453e3baab439d683c7f278192e0e20aca0aa154a5ed2bfb051c7da849e'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
