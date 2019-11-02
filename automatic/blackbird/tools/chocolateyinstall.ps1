$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'blackbird'
  url            = 'https://www.getblackbird.net/download/Blackbird_v1.0.79.3%5Fx32.zip' 
  Url64          = 'https://www.getblackbird.net/download/Blackbird_v1.0.79.3%5Fx64.zip'
  checksum       = 'd66d16e341f3e6e3c9caf0d32e4080c76315ef50dfbb2576aef3c5e274f27b3c'
  Checksum64     = '8c89913809b692dc8757ac80b406f333ef9fb0f2a1d5ef9323d9d0ad52df59ac'
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
