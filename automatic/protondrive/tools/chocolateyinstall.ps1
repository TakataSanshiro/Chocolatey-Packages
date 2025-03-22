$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/1.10.0/x64/Proton%20Drive%20Setup%201.10.0.exe'
  silentArgs     = '-s'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = 'F2076CFD1E9A3172C6327191C19CD52D6FEB1074880B62F738793DD41029B818'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
