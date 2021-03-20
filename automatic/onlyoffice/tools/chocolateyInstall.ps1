$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v6.2.0/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v6.2.0/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '5be0460d454f3e864bad70b00ec2bfcb7a0f7a1b5d234425ddbaf8c4e98db4d9'
  checksumType   = 'sha256'
  checksum64     = 'f55b11ab7ce8268069b026ae8d42f3d8749319d7b950c242f4badf0bd2b87d46'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
