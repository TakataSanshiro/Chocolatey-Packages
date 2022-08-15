$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'blackbird'
  url            = 'https://www.getblackbird.net/download/Blackbird_v1.0.85.2%5Fx32.zip' 
  Url64          = 'https://www.getblackbird.net/download/Blackbird_v1.0.85.2%5Fx64.zip'
  checksum       = 'c6747aab03b0b4939df0d2a3235c1060518fdeb2128672c7887432ab5d7ef810'
  Checksum64     = '078fe7bad0f70463d6825c66ddb5e05e7590cc632559c619ec76691543cbd4bb'
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
