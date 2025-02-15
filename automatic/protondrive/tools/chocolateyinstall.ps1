$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/1.9.0/x64/Proton%20Drive%20Setup%201.9.0.exe'
  silentArgs     = '-s'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = '3ECD02AA22D2312027B4E31F03A3F738862D28928B1FC0FF573D1348613D0D9D'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
