$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'firealpaca'
  installerType  = 'exe'
  url            = 'https://firealpaca.com/download/win64'
  checksum       = '816C7FFF0826BD344CD3E9F4FC60C35AC76B2F3A6C3E230ADB116F46BEF69FFB'
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
