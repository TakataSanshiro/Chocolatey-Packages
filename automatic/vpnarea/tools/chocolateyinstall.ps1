$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'vpnarea'
  fileType       = 'exe'
  url            = 'https://vpnarea.com/VPNArea.exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'VPNArea*'
  checksum       = '32d6b4484b656c7130e074254bfaccc177ba76b8f7fe5c484bd4f7e5b039a8e9'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
