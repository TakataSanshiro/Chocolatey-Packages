$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'textify'
  installerType  = 'exe'
  url            = 'https://rammichael.com/downloads/textify_setup.exe'
  checksum       = '615002ea5a68d34b49cec2a7ab6cfb60fd5b36395e64a5e35960f36c7a0f8d64'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Textify'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
