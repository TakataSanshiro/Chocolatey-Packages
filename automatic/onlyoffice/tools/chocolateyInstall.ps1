$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.0.0/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v8.0.0/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = 'eead5c195014f1d0cd2db63153eeaaabdc3a21a46b87f03ed938a7b8d84c7879'
  checksumType   = 'sha256'
  checksum64     = 'e66c9cc7aa68f2a3e98a7e80fbd9983b8a99bcb67ad2e9210c4705e960f02bb6'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
