$ErrorActionPreference = 'Stop';

$packageName    = 'blackbird'
$url            = 'https://getblackbird.net/download/Blackbird_v1.0.7_x32.zip' 
$url64          = 'https://getblackbird.net/download/Blackbird_v1.0.7_x64.zip'
$checksum       = '58AB14797BD7B136F7C3397431EFC85B19167984001807EA8F7A18EFF64DF3B9'
$checksum64     = '90152D6B663923BCA8DAED18BA65B84FBD9CF6DC31C2ADC23E7FE72F7E83B21F'
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
