$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://github.com/Ruben2776/PicView/releases/download/2.2.7/PicView-2.2.7.exe'
  checksum       = '3f7d9714216128434a789a680dece7a3cef06d7cdf67bb24277b4f6df62ccfa4'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'Picview*'
}
Install-ChocolateyPackage @packageArgs
