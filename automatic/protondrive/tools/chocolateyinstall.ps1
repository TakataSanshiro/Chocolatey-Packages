$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/1.7.6/Proton%20Drive%20Setup%201.7.6.exe'
  silentArgs     = '-s'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = 'F8942194B545D21538058CA2449E6DF68A2F8C229534B2556EFE9052D6329D5B'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
