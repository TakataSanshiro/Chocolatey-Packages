$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'vpnarea'
  fileType       = 'exe'
  url            = 'https://vpnarea.com/VPNArea.exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'VPNArea*'
  checksum       = '087ED25D267D6C7D13AA623B862D15A635BD326CA0BDCE28DC36E8BA3A166B9B'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
