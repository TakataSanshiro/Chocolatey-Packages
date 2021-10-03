$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v6.4.1/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v6.4.1/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = 'aea1af0d4dda134d159ab8b571ec352cfc5373667fac5c81f759877707f5e749'
  checksumType   = 'sha256'
  checksum64     = '05ebacafa4c883df6a9ef8e26b847a0977a92328c792f92c26b87875dd80fac9'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
