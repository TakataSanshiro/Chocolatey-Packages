$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'firealpaca'
  installerType  = 'exe'
  url            = 'https://firealpaca.com/download/win64'
  checksum       = 'e081711c95da4282d69d87a2812f9289f4e7bde6f35a6801c53e02d0069a7a96'
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
