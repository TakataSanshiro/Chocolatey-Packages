$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'vpnarea'
  fileType      = 'exe'
  url           = 'https://vpnarea.com/VPNArea.exe'
  silentArgs    = '/S'
  validExitCodes= @(0)
  softwareName  = 'vpnarea*'
  checksum      = 'A49F33C66D2737C3E47BC631C274F545B1EBFDFD0DBF6974582621C176F0EE21'
  checksumType  = 'sha256'
}
Install-ChocolateyPackage @packageArgs
