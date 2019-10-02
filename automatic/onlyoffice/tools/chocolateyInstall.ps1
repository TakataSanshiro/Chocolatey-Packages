$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-5.4.1-2/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-5.4.1-2/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = 'bab0f8e6a6a466b701f1e047a92fe48440ac177426461d9269a5d11e8cefd5ad'
  checksumType   = 'sha256'
  checksum64     = '0bf65e4c8b19115f1426e1e53b91eb50fcc253d80b89d8dd906a45777cc844d6'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
