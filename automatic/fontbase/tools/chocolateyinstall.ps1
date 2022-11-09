$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'fontbase'
  installerType  = 'exe'
  url            = 'https://releases.fontba.se/win/FontBase-2.18.1.exe'
  checksum       = '8eaed3f53c8af60ec0a13522a857c9bc27c69a8e554ad9399547298b31fd1373'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Fontbase'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
