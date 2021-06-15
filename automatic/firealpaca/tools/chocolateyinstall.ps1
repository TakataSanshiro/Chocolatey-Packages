$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'firealpaca'
  installerType  = 'exe'
  url            = 'https://firealpaca.com/download/win64'
  checksum       = 'FF4DB000E86CCF214836B0C84A0B7976B2CAE4E02022A8AA76628A7D7BA29388'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'Firealpaca'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  options = @{
    Headers = @{
      Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
      'Accept-Charset' = 'ISO-8859-1,utf-8;q=0.7,*;q=0.3';
      'Accept-Language' = 'en-US,en;q=0.5';
      Referer = 'http://firealpaca.com/';
    }
  }
}
Install-ChocolateyPackage @packageArgs
