$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'riot-web'
  installerType  = 'exe'
  url            = 'https://packages.riot.im/desktop/install/win32/ia32/Riot%20Setup%201.5.9.exe'
  url64          = 'https://packages.riot.im/desktop/install/win32/x64/Riot%20Setup%201.5.9.exe'
  checksum       = '5a026d6413edba51d9a3fc1a1d74ccb9d3f677a417258a855b07b6c3429f965bb4758c45585b09d917bee007f0ff2bf3b8840713483f7dd46946a9b9fa9a4971'
  checksum64     = '155558ca870fe0b5f99b5545e6a4ff96e782639cebf14af8b73e870a0289a297ae30cb095c1db9772f2466298f0fb9f36bd7b4181754b85570b09b1186fb3794'
  checksumType   = 'sha512'
  checksumType64 = 'sha512'
  silentArgs     = '--silent'
  validExitCodes = @(0)
  softwareName   = 'Riot*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
