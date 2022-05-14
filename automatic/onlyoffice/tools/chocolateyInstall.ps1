$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'onlyoffice'
  fileType       = 'exe'
  url            = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.1.0/DesktopEditors_x86.exe'
  url64          = 'https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v7.1.0/DesktopEditors_x64.exe'
  softwareName   = 'Onlyoffice*'
  checksum       = '609c3796fb94192ebdb279fdb3c407f076bd6b9d2189d7382a1546b9b266f522'
  checksumType   = 'sha256'
  checksum64     = 'd591bd2d819cba71c1e5a0ede5342cf372c5c641c5bbaee12d3a7d234fa88c10'
  checksumType64 = 'sha256'
  silentArgs     = '/s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
