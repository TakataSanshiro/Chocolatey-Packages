$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/1.8.1/x64/Proton%20Drive%20Setup%201.8.1.exe'
  silentArgs     = '-s'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = 'A31DBE748BD9200D192980841B061B37B9705716BDAA7D2FE8824EB9E81ACDCB'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
