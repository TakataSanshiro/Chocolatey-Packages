$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.0.1/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.0.1/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = 'EB6C5387DF714FCEAD983B8CEED7EF619703DDD997299DCD78A6C3928533CA14'
  checksumType   = 'sha256'
  checksum64     = '2C0966BDB2731583C0F5A51B0476DA754BD64DF51E76FFDD937839CF395ECEB8'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
