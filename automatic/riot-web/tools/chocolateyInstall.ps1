$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'riot-web'
  installerType  = 'exe'
  url            = 'https://packages.riot.im/desktop/install/win32/ia32/Riot%20Setup%201.5.8.exe'
  url64          = 'https://packages.riot.im/desktop/install/win32/x64/Riot%20Setup%201.5.8.exe'
  checksum       = 'da0eace57f8b1cacb369a190532a8cdf4702cd3a9c5d840e7cfbe81f4a6ed3fa2b6c0b2e1126e5b3ccb44607bd8a7711c05599b8f16d76e557213ea24565cbdc'
  checksum64     = '0e775342c3bd1294b42d682ec23dfaf2f9ffb8c2440dbca809ff64b52ddb581178a13e976ad4a2d7a93f8e77b90efd50c949ddbe834cc858a681d3096c2824f7'
  checksumType   = 'sha512'
  checksumType64 = 'sha512'
  silentArgs     = '--silent'
  validExitCodes = @(0)
  softwareName   = 'Riot*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
