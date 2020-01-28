$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xnconvert.install'
  installerType  = 'exe'
  url            = 'https://download.xnview.com/XnConvert-win.exe'
  url64          = 'https://download.xnview.com/XnConvert-win-x64.exe'
  checksum       = 'f9e12546cbf24e6fae666984947daaae134d14f42bfdc0a039cfcf801acb9831'
  checksum64     = 'ffd504f8a30905de3f16bbfeacc958b5a65920f4a05a3e494928ee4bf6b07e9f'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'XnConvert*'
}
Install-ChocolateyPackage @packageArgs
