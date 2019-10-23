$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'vpnac'
  fileType      = 'exe'
  url           = 'https://vpn.ac/download/vpn.ac-setup.exe'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'vpnac*'
  checksum      = 'D731ABC1C052D6C1B7DDE814F007DDEB1A6A2141DD561DB753C32E95A28AB708'
  checksumType  = 'sha256'
  toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
