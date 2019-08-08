$ErrorActionPreference = 'Stop';

$packageName    = 'blackbird'
$url            = 'https://www.getblackbird.net/download/Blackbird_v1.0.78_x32.zip' 
$url64          = 'https://www.getblackbird.net/download/Blackbird_v1.0.78_x64.zip'
$checksum       = '3943CBA373A690847EFF6121CF11BC8DB7A09A9E3170656D1A5F6795741607F9'
$checksum64     = 'BB6482BA1B5A5574D98B448863F2868D65D6AB350A6AAC31B4B5BDBE18883204'
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
