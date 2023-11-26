$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/Proton%20Drive%20Setup%201.4.3.exe'
  silentArgs     = '/exenoui /qn /norestart'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = 'eaa349d8959ee0db2110be58e590494702ddd1a8d51841c9439563e1ecdb35cb'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
