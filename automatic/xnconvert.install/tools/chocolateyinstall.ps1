$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xnconvert.install'
  installerType  = 'exe'
  url            = 'https://download.xnview.com/XnConvert-win.exe'
  url64          = 'https://download.xnview.com/XnConvert-win-x64.exe'
  checksum       = '02d530fa335b8878fbb5d122c59ebc55b3ff7db13e9c9372de57904d73316207'
  checksum64     = 'e6ae7d6e1325d9d3b5ee97342a94350ec8c3a4031736d81590446a0242e98bfa'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'XnConvert*'
}
Install-ChocolateyPackage @packageArgs
