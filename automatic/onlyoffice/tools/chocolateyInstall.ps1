$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.4.1/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.4.1/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '49153d9783bbabba344381cdaa025eedbed1e4816810dc754f8b46edf0727caa'
  checksumType   = 'sha256'
  checksum64     = 'b0d0f6e02ede0bfd922bba2cf6edc9391b1efd5b320ab449b47479e4a9da5b46'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
