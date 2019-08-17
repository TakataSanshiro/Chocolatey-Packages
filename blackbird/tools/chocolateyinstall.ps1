$ErrorActionPreference = 'Stop';

$packageName    = 'blackbird'
$url            = 'https://www.getblackbird.net/download/Blackbird_v1.0.79_x32.zip' 
$url64          = 'https://www.getblackbird.net/download/Blackbird_v1.0.79_x64.zip'
$checksum       = '8FE4BEAB55A8992943EB7F7A50AE1B7618BBB88722729ED31367B099C8389189'
$checksum64     = 'F45D983D4084FC203253357B4E9C2B9083A83E05FB9ACE7B932808D2EA94B344'
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
