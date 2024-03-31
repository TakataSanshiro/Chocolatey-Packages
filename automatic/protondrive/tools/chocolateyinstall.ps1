$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/Proton%20Drive%20Setup%201.5.1.exe'
  silentArgs     = '/exenoui /qn /norestart'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = '111B9C558BE8422A8986B4CB69B243E7AFF737F7DB1F7CCFB9EDFA4AB5441887'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
