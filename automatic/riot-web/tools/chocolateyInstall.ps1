$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'riot-web'
  installerType  = 'exe'
  url            = 'https://packages.riot.im/desktop/install/win32/ia32/Riot%20Setup%201.5.11.exe'
  url64          = 'https://packages.riot.im/desktop/install/win32/x64/Riot%20Setup%201.5.11.exe'
  checksum       = '0a8fe80095dc0bbf621743c9551f314c6f6ae6db71b4d50e8803ea0695c65dd9fa9894ca5f42389a0584df05a760d5e0fba43259f78501b0e775b7b91e37d9f6'
  checksum64     = '99292cd3cf19345fabf5db348b2be4aa1c68159e97e7b523e11abe09b06e2c3e71825469a0b933706183dcb7699cb69e598c70b42cf66d166b1fdb156a2544cf'
  checksumType   = 'sha512'
  checksumType64 = 'sha512'
  silentArgs     = '--silent'
  validExitCodes = @(0)
  softwareName   = 'Riot*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
