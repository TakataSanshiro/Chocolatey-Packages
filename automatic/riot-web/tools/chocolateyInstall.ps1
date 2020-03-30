$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'riot-web'
  installerType  = 'exe'
  url            = 'https://packages.riot.im/desktop/install/win32/ia32/Riot%20Setup%201.5.14.exe'
  url64          = 'https://packages.riot.im/desktop/install/win32/x64/Riot%20Setup%201.5.14.exe'
  checksum       = '159f519e692ced67454dade23cce4cbfccc13aa5e62b46392cd1803f2e16ecf4e47d29be2d1175b6ed9707858ed14dcf6125d785a25b4bb7e7b7c2592a05e50f'
  checksum64     = '16c68020ac19f34da584b37bbd6ddb44e31ab190c10fc03876a6ba2304c9db665eb62a2d430a3bad72a7fffcf8ca31f35e1e6139de3cbd24d1fe83b99baef0cc'
  checksumType   = 'sha512'
  checksumType64 = 'sha512'
  silentArgs     = '--silent'
  validExitCodes = @(0)
  softwareName   = 'Riot*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
