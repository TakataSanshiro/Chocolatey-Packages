$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://www.nirsoft.net/utils/videocacheview_setup.exe'
  checksum       = '8e3a16867c4cdabd239e0200a38df64e9f6e5ee2876a004ebb3306abfe30feb5'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'videocacheview*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
