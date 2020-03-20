$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'riot-web'
  installerType  = 'exe'
  url            = 'https://packages.riot.im/desktop/install/win32/ia32/Riot%20Setup%201.5.13.exe'
  url64          = 'https://packages.riot.im/desktop/install/win32/x64/Riot%20Setup%201.5.13.exe'
  checksum       = 'a515b1c3e940830be53cdccb900056cc9bfe5a52af3c3bd5aabe87dea07304e573732199c6305a1a6c508c88869d362d5d30b093ec412cc36680a227c2f2170f'
  checksum64     = '2c70c77aaad5861551348b3fc844d6973ba1f77d43423b5c269e560a323836e82d55717fe1ff39272daa7d5da22a1f699ba11edfdac47a640847e6d82ccf7d10'
  checksumType   = 'sha512'
  checksumType64 = 'sha512'
  silentArgs     = '--silent'
  validExitCodes = @(0)
  softwareName   = 'Riot*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
