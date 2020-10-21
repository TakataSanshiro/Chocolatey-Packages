$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'firealpaca'
  installerType  = 'exe'
  url            = 'https://firealpaca.com/download/win64'
  checksum       = 'DAE4D882B3D803C3295737F87C06639C7ABB66A9C3BA0060185C85DF4B58FDC9'
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
