$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/jurplel/qView/releases/download/6.0/qView-6.0-win32.zip'
  url64          = 'https://github.com/jurplel/qView/releases/download/6.0/qView-6.0-win64.zip'
  checksum       = 'e9ff7145d3209e0c105891eee5061dff810000352d5fcab40f33a46ba9ce0ff8'
  checksum64     = 'ccfc0712398a8c29e1ef09b6e5309b6a43ac9e485fac0bffc0f31a362883586e'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
