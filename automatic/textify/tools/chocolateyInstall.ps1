$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'textify'
  installerType  = 'exe'
  url            = 'https://rammichael.com/downloads/textify_setup.exe'
  checksum       = '55faaaacc49e916a5d4fdd24e657b80a7cd675c55c16b2ddd936051f1f978d25'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Textify'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
