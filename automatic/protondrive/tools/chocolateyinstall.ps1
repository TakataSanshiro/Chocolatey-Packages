$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/Proton%20Drive%20Setup%201.6.2.exe'
  silentArgs     = '-s'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = '2667A9ED265BAA64712A3F6A4030164ABF780D121314C8BFAFB9BEE100F0C079'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
