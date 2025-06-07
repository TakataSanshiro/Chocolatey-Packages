$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/1.10.3/x64/Proton%20Drive%20Setup%201.10.3.exe'
  silentArgs     = '-s'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = '52C025CCF038C6C24D37407E6394D2CFA79DD7B9DF403CB220F4FF0DD7EAFD78'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
