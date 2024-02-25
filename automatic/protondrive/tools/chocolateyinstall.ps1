$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protondrive'
  fileType       = 'exe'
  url            = 'https://proton.me/download/drive/windows/Proton%20Drive%20Setup%201.4.10.exe'
  silentArgs     = '/exenoui /qn /norestart'
  validExitCodes = @(0)
  softwareName   = 'ProtonDrive*'
  checksum       = '76F0E123D1B31400F67B31A3873EBEAA4BA80628561CA0433BDBFFC458310238'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
