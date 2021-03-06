$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'vpnac'
  fileType      = 'exe'
  url           = 'https://vpn.ac/download/vpn.ac-setup.exe'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'vpnac*'
  checksum      = '2d922ecf50936ccfeb7045bc2f6ad2ea7b48df391a850bf7b6c813ccf8d6c748'
  checksumType  = 'sha256'
  toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
