$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'riot-web'
  installerType  = 'exe'
  url            = 'https://packages.riot.im/desktop/install/win32/ia32/Riot%20Setup%201.5.15.exe'
  url64          = 'https://packages.riot.im/desktop/install/win32/x64/Riot%20Setup%201.5.15.exe'
  checksum       = '865229c40d9cb0eadf9d966f941398965ea2aec100e2007ad04003d43aa4305b7c0042a1d6da72784a75e07943fb538c8b603164c547f4eee078879f2e56dd73'
  checksum64     = 'e7738eac21ef19806f1929aca14595c8c3a455f801bf45757cd75c2c74902877360168c6737cb43f2fc51f23c8f7f67f329dac88a205216d1fb32677d829a0c3'
  checksumType   = 'sha512'
  checksumType64 = 'sha512'
  silentArgs     = '--silent'
  validExitCodes = @(0)
  softwareName   = 'Riot*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
