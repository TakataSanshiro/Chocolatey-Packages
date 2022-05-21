$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'textify'
  installerType  = 'exe'
  url            = 'https://rammichael.com/downloads/textify_setup.exe'
  checksum       = '97951da47cbbbe513703b70a53307e6e692f4be161086f7ae5b8f31c415b13c9'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Textify'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
