$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/Proton%20Drive%20Setup%201.5.5.exe'
  silentArgs     = '-s'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = 'B19B261A400227A470D4C10C929F63BD7223F09AC5861A3B36CC4A51C4B55C1F'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
