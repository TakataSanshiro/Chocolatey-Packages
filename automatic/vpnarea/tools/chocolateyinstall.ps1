$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'vpnarea'
  fileType       = 'exe'
  url            = 'https://vpnarea.com/VPNArea.exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'VPNArea*'
  checksum       = '422edbc9d760fc7e7e5232c07282b56e5cbcde8387b2df88292a0fdeb8af5ebe'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
