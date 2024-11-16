$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/1.7.8/Proton%20Drive%20Setup%201.7.8.exe'
  silentArgs     = '-s'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = '2CA2264452183551FB35E02013692B93254BF0F3CC2FFBEF1108811FD10EDCE7'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
