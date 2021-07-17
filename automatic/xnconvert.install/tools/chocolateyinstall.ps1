$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xnconvert.install'
  installerType  = 'exe'
  url            = 'https://download.xnview.com/XnConvert-win.exe'
  url64          = 'https://download.xnview.com/XnConvert-win-x64.exe'
  checksum       = 'bed6f4c1d23c72eb9ee3920c758df16c08b82fde4b1610af3a7262405d70f181'
  checksum64     = 'ca5bd76f04af7786b20e880e5752d7c670cd473c66788837d824e036e1c8e12e'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'XnConvert*'
}
Install-ChocolateyPackage @packageArgs
