$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://sourceforge.net/projects/ijbswa/files/Win32/3.0.33%20(stable)/privoxy_setup_3.0.33.exe'
  checksum       = '61CF249AA564DD5790B1E2F8A27FF5CB0376A0926EBE983429B5B9D9861D74F3'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'privoxy'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
