$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/Proton%20Drive%20Setup%201.4.6.exe'
  silentArgs     = '/exenoui /qn /norestart'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = '353CA4D8EC4E8CFF1613FB435F6A6F4F3C5D24ADF6E8E9AA83F36A2FF280AF0C'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
