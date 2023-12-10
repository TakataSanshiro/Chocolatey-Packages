$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/Proton%20Drive%20Setup%201.4.4.exe'
  silentArgs     = '/exenoui /qn /norestart'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = 'e2e3ef83bc5cb3b1c5c43c855d94b5daced0aab3e0b8237ec4985f76b139945f'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
