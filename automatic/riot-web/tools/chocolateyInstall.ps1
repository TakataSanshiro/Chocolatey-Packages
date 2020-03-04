$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'riot-web'
  installerType  = 'exe'
  url            = 'https://packages.riot.im/desktop/install/win32/ia32/Riot%20Setup%201.5.12.exe'
  url64          = 'https://packages.riot.im/desktop/install/win32/x64/Riot%20Setup%201.5.12.exe'
  checksum       = 'bb04f071fd7bdaa8225de2d96b5ba47e4c03c4154e7fd1f11c9a197d137987f955fb69b0ab55176efdbfaf47b2665339fc2372856aa560dc5a8f8ed9f889c395'
  checksum64     = '4612d22311c31b4405c802079dd73aa1cc0da76c7887b8b8d0bc870438521e6ce20d6c71bc7c3777e111aa016122bd2234d36a57947c8ce1ec8905caa727cda8'
  checksumType   = 'sha512'
  checksumType64 = 'sha512'
  silentArgs     = '--silent'
  validExitCodes = @(0)
  softwareName   = 'Riot*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
