$ErrorActionPreference = 'Stop';

$packageName    = 'firealpaca'
$installerType  = 'exe'
$url            = 'https://firealpaca.com/download/win64'
$checksum       = 'A266A7C62C58053225755009717D6BF86DFD5CEDBA4760E079E5F64E1F418DDD'
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
  softwareName  = 'pia*'
  checksum      = $checksum
  checksumType  = 'sha256'
  Options       = $options
}

Install-ChocolateyPackage @packageArgs
