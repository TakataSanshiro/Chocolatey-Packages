$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/1.7.7/Proton%20Drive%20Setup%201.7.7.exe'
  silentArgs     = '-s'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = 'F6387705F72E6AD3EA9E4B305A98A410F6919C31007347D175E08D0D2550AEB1'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
