$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/1.10.4/x64/Proton%20Drive%20Setup%201.10.4.exe'
  silentArgs     = '-s'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = '80449DCCB991B12BE6AAFF0288BF53C9B6355105B20AD0C879313CEA60F13394'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
