$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v6.1.0/ONLYOFFICE_DesktopEditors_6.1.0.90_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v6.1.0/ONLYOFFICE_DesktopEditors_6.1.0.90_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '57E315F5214BFCCC0176BEA2D59863AE7B1745C3C1E15E0FB0BA2533215303A6'
  checksumType   = 'sha256'
  checksum64     = '920813241D6D9D2E346F2C0BFFC8EE3EFE279A0BC8DB3C1073AD52022D4C00DB'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
