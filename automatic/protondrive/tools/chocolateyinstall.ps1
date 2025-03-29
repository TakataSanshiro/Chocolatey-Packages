$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/1.10.1/x64/Proton%20Drive%20Setup%201.10.1.exe'
  silentArgs     = '-s'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = 'A6C37E86F4F19AA675CB2FE6D0029244980CBE364E94ADA5CFA0B8FAF0EA3CD6'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
