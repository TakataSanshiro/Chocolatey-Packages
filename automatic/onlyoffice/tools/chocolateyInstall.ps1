$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.0.1/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.0.1/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '40b1b4f1cb8521acab11766ed6fd3f782e2655b85b30e3efbd7d31d32d9bc773'
  checksumType   = 'sha256'
  checksum64     = 'c57770b58eb96ced22dcb2ff4aea1f446447da6d7db2e79e5ebaadfc3dce3fa4'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
