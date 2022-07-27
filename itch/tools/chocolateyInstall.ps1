$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://itch.io/app/download?platform=windows'
  checksum       = '55E97E558F22F6EE39243EB47C6E3A5DEE12D1039EA73B9A860562AD12AF0FEB'
  checksumType   = 'sha256'
  silentArgs     = '--silent'
  validExitCodes = @(0)
  softwareName   = 'itch*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
