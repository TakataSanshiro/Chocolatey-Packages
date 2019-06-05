$ErrorActionPreference = 'Stop';

$packageName    = 'firealpaca'
$installerType  = 'exe'
$url            = 'https://firealpaca.com/download/win64'
$checksum       = '0738BE64A1910B466AFB5EE9EC5F16FA11B23969468F4169A881083A8D7CB000'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)
$options = @{
  Headers = @{
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
    'Accept-Charset' = 'ISO-8859-1,utf-8;q=0.7,*;q=0.3';
    'Accept-Language' = 'en-US,en;q=0.5';
    Referer = 'http://firealpaca.com/';
  }
}

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  softwareName  = 'firealpaca*'
  checksum      = $checksum
  checksumType  = 'sha256'
  Options       = $options
}

Install-ChocolateyPackage @packageArgs
