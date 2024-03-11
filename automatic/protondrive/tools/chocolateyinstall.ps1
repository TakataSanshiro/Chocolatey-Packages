$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/Proton%20Drive%20Setup%201.5.0.exe'
  silentArgs     = '/exenoui /qn /norestart'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = '5409C4BCD689232C936EC09690202DBF9CED1184EC81F6F4CD2E3A92431EE101'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
