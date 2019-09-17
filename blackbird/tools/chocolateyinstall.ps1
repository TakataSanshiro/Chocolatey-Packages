$ErrorActionPreference = 'Stop';

$packageName    = 'blackbird'
$url            = 'https://www.getblackbird.net/download/Blackbird_v1.0.79.1_x32.zip' 
$url64          = 'https://www.getblackbird.net/download/Blackbird_v1.0.79.1_x64.zip'
$checksum       = 'B01EF92414B26805C89D8BDAB7E193484736BBE7680563734E9C0AB4E4BDEA9A'
$checksum64     = 'E123FEF5A6B3FE63B235D8F9E05A1F0CD9E0172FB40EF723E41179F5C75A65BD'
$checksumType   = 'sha256'
$checksumType64 = 'sha256'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$options        = @{
    Headers = @{
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
    'Accept-Charset' = 'ISO-8859-1,utf-8;q=0.7,*;q=0.3';
    'Accept-Language' = 'en-US,en;q=0.5';
    Referer = 'https://www.getblackbird.net/download/';
  }
}

$packageArgs = @{
  packageName    = $packageName
  url            = $url
  Url64          = $url64
  checksum       = $checksum
  Checksum64     = $checksum64
  checksumType   = $checksumType
  ChecksumType64 = $checksumType64
  UnzipLocation  = $toolsDir
  Options        = $options
}

Install-ChocolateyZipPackage @packageArgs
