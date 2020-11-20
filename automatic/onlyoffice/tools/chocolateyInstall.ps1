$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-6.0.2/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-6.0.2/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = 'bc8d0a77cd803c443bdcad51180638f0ba9f5edd6b28339d666deeed9f7073dc'
  checksumType   = 'sha256'
  checksum64     = 'f5972e488e3ba6fdfdbaa5de3337dc51338d52b18d95cddeea0d203dde6c523b'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
