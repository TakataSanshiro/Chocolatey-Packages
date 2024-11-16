$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xnconvert.install'
  installerType  = 'exe'
  url            = 'https://download.xnview.com/XnConvert-win.exe'
  url64          = 'https://download.xnview.com/XnConvert-win-x64.exe'
  checksum       = '037a4de1f0acfbd3edc1012a2b556fb14dc4dd40579e30b3e9cfdbba36318c3a'
  checksum64     = 'def4258de96f139e0145b5363c79247b070da10e5e5853c109a95c4bc361a065'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'XnConvert*'
}
Install-ChocolateyPackage @packageArgs
