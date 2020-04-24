$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xnconvert.install'
  installerType  = 'exe'
  url            = 'https://download.xnview.com/XnConvert-win.exe'
  url64          = 'https://download.xnview.com/XnConvert-win-x64.exe'
  checksum       = 'cd9edfec553565e0830f60f0b84b6e13f2c40bc893fbb891a6f1d0dc5e1a6229'
  checksum64     = 'f7c1fcfc271ef80b00e94f3b598fe2d0c8de456cf6d4367275db0a47f421f9bb'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'XnConvert*'
}
Install-ChocolateyPackage @packageArgs
