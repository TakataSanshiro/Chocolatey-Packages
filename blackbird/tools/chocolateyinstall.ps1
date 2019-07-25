$ErrorActionPreference = 'Stop';

$packageName    = 'blackbird'
$url            = 'https://www.getblackbird.net/download/Blackbird_v1.0.75_x32.zip' 
$url64          = 'https://www.getblackbird.net/download/Blackbird_v1.0.75_x64.zip'
$checksum       = '821FE1843C68B800FEA908202868EF1650E9910C8036729937D91D96D9299887'
$checksum64     = 'B47DD8A909A978F8CE972A22EEEC6A16D4CBA25C3B7C714C4B82A5DAD00151D8'
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
