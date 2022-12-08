$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'blackbird'
  url            = 'https://www.getblackbird.net/download/Blackbird_v1.0.85.3%5Fx32.zip' 
  Url64          = 'https://www.getblackbird.net/download/Blackbird_v1.0.85.3%5Fx64.zip'
  checksum       = '5de4f771364f55c4d2f7f1d7640054d379319641d3a6fb4448baa8275adb3b0e'
  Checksum64     = 'b60e9b40a7d73622ae9f601c4dddb5b296c2448ea97ec87a8861cb15f53ef810'
  checksumType   = 'sha256'
  ChecksumType64 = 'sha256'
  UnzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Options        = @{
    Headers = @{
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
    'Accept-Charset' = 'ISO-8859-1,utf-8;q=0.7,*;q=0.3';
    'Accept-Language' = 'en-US,en;q=0.5';
    Referer = 'https://www.getblackbird.net/download/';
    }
  }
}
Install-ChocolateyZipPackage @packageArgs
