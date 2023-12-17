$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/Proton%20Drive%20Setup%201.4.5.exe'
  silentArgs     = '/exenoui /qn /norestart'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = '00a563c1d78ee0446d98c57e1f62a0fb23d7156855b70c096ddbb3b2e1a8545d'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
