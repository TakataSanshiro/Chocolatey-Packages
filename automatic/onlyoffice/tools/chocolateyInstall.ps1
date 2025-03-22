$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.3.2/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.3.2/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '6a99e92e312640967c24486a666713e610d51d8e1c5e83426d282d4a44822818'
  checksumType   = 'sha256'
  checksum64     = 'c95b75f0f667e744e5a148b2dd05e81fc28cfb290b6e1ae85cc513e9bbe16022'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
