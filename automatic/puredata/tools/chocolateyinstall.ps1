$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'puredata'
  installerType  = 'exe'
  url            = 'http://msp.ucsd.edu/Software/pd-0.53-0.windows-installer.exe'
  checksum       = '4d48a48cad583d7f57d2457d83a953aa73e6fd1a1c08bf9d6f4d42175c26193f'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'PureData'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
