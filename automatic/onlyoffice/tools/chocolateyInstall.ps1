$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.2.0/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.2.0/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = 'de78e1c8bc5b29ae9ae9dd4c3462394fdd7769bc4a93bd690576801b9e83cd5a'
  checksumType   = 'sha256'
  checksum64     = '2e0334edab0a28170ab8119e761fcc24b75592907be61eee135c5910a050b882'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
