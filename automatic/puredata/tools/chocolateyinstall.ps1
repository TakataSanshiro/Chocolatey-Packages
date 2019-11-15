$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'puredata'
  installerType  = 'exe'
  url            = 'http://msp.ucsd.edu/Software/pd-0.50-0.windows-installer.exe'
  checksum       = '33aa47033b14efa2230a9de400a0c76bc0ebd2ef121285608a9c00f618edb905'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'PureData'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
