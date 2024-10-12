$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/1.7.4/Proton%20Drive%20Setup%201.7.4.exe'
  silentArgs     = '-s'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = '92B8446203CCEEBB1139DB43F5302943C64F1BE6AB41214259D8A27449EDE2FB'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
