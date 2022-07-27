$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'textify'
  installerType  = 'exe'
  url            = 'https://rammichael.com/downloads/textify_setup.exe'
  checksum       = '82e0d1bb7a8b81a0b35b8c031bb732a7776c6c8833b2a1637af4fa4b9ea6ad21'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Textify'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
