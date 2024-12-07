$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/1.7.11/Proton%20Drive%20Setup%201.7.11.exe'
  silentArgs     = '-s'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = '5DC3A632E1434214C01D2AC760002FCDDAEDFC3E4DC5CDB60A5AB49D20AB21E2'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
