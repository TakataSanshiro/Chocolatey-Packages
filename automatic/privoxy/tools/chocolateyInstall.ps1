$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://sourceforge.net/projects/ijbswa/files/Win32/3.0.34%20(stable)/privoxy_setup_3.0.34.exe'
  checksum       = 'EC67CAD4C1C755AAF73FBCA6FFA9011A7E926F566CF47829C43EDB44EB12A177'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'privoxy'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
