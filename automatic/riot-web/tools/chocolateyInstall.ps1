$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'riot-web'
  installerType  = 'exe'
  url            = 'https://packages.riot.im/desktop/install/win32/ia32/Riot%20Setup%201.5.10.exe'
  url64          = 'https://packages.riot.im/desktop/install/win32/x64/Riot%20Setup%201.5.10.exe'
  checksum       = '3e9c6101907e5f94f1cb099b9d9f92e3a06d1483011352c406da881f7b15ae03463dccc5ad403a3e84a7f17537c8f344eeec7f4dbc39eb050bf9b53f07963f89'
  checksum64     = '4c8138006e256ff3fa46f794d549cad6a48148e1bd012a6691c9e2cf01ee15ed776b28028051a3fbc3d67c8598ad77602aa4abe77caa447752dbb9ae1991b9ca'
  checksumType   = 'sha512'
  checksumType64 = 'sha512'
  silentArgs     = '--silent'
  validExitCodes = @(0)
  softwareName   = 'Riot*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
