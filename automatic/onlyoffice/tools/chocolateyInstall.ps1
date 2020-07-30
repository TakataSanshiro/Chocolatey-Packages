$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-5.6.0/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-5.6.0/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = 'f94dbb1420ead786f168f9201d5fa89889548a01431baa3d1aa5cb59a922e896'
  checksumType   = 'sha256'
  checksum64     = 'e0a6703983a353ce7b5205205302b87a4d5fcc982f4b8a708ce143cc4a96823b'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
