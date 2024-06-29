$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/Proton%20Drive%20Setup%201.6.0.exe'
  silentArgs     = '-s'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = '1A34FF143D0A1DE3F64CEE148FE326DF92ED10D72CBCE5CB153B3495E6996860'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
