$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'textify'
  installerType  = 'exe'
  url            = 'https://rammichael.com/downloads/textify_setup.exe'
  checksum       = '9edcfa570d1bb6e1d3ddaa802bd773c05feadd5023c2ff87db54deb62d5507f0'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Textify'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
