$ErrorActionPreference = 'Stop';

$packageName = 'defender-injector'
$url = 'https://www.sordum.org/files/download/defender-injector/dInjector.zip' 
$checksum = '33F490C67CC02F5701F518E150A166C2D305ED2E31D77EB7E868C7886677666A'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$options = @{
  Headers = @{
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
    'Accept-Charset' = 'ISO-8859-1,utf-8;q=0.7,*;q=0.3';
    'Accept-Language' = 'en-US,en;q=0.5';
    Referer = 'https://www.sordum.org/downloads/?st-defender-injector';
  }
}

$packageArgs = @{
  packageName   = $packageName
  url           = $url
  checksum      = $checksum
  checksumType  = 'sha256'
  UnzipLocation = $toolsDir
  Options       = $options
}

Install-ChocolateyZipPackage @packageArgs
