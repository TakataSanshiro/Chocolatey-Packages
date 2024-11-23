$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/1.7.9/Proton%20Drive%20Setup%201.7.9.exe'
  silentArgs     = '-s'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = '1EA6F4CA26CD0BB19A45B736CC5046E00CFD685E31CBACC9AE22EC717E60728B'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
