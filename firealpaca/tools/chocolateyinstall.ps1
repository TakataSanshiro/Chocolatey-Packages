$ErrorActionPreference = 'Stop';

$packageName    = 'firealpaca'
$installerType  = 'exe'
$url            = 'https://firealpaca.com/download/win64'
$checksum       = '1172FD596CB45A34438208563A552D499CA382CB4B7A17B95880883160B3C3F1'
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
