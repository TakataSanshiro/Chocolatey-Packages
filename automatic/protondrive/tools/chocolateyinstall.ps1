$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/Proton%20Drive%20Setup%201.5.4.exe'
  silentArgs     = '-s'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = 'BA84FDA7DF9BCB1DC126D344CD3B37CB5F5057C30D5862562E1360E8B9F060D3'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
