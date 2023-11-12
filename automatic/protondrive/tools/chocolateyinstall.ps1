$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/Proton%20Drive%20Setup%201.4.1.exe'
  silentArgs     = '/exenoui /qn /norestart'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = 'A6D0010282B78476265B57C2E8BF6218751D6F431AE823C3157D13CFBC64859E'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
