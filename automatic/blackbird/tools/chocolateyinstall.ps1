$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'blackbird'
  url            = 'https://www.getblackbird.net/download/Blackbird_v1.0.85.1%5Fx32.zip' 
  Url64          = 'https://www.getblackbird.net/download/Blackbird_v1.0.85.1%5Fx64.zip'
  checksum       = '8f152850ae16ba20406441f508ed1cfabe679efaa5fe9807e9f6cca671b346c4'
  Checksum64     = '65c6f89ca84b2348bfaf3d2b32667a8ea342db457ff753638732e9d451989174'
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
