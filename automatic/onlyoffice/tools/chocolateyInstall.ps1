$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.3.0/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.3.0/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '37b7153fc4275f9e8d70c3685853b8e2e89685956d6adf2ab5decbc3577f7092'
  checksumType   = 'sha256'
  checksum64     = '9b77e38608a8736955babea68307a1a28a82e3fa0868379402344094ead709e5'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
