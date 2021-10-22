$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v6.4.2/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v6.4.2/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = 'fcfa96de54cdb0ee9aa9e948528238aee5bbf43c5f92e2da4133628978bbed23'
  checksumType   = 'sha256'
  checksum64     = '66e73786174437f05a7b28c5ae7460a245de8554e397d8fd45fbb7a22b647729'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
