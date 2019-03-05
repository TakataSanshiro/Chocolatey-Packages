$ErrorActionPreference = 'Stop';

$packageName = 'blackbird'
$url = 'https://www.getblackbird.net/download/Blackbird_v1.0.4_x32.zip' 
$url64 = 'https://www.getblackbird.net/download/Blackbird_v1.0.4_x64.zip'
$checksum = '36FDF1235ABA72E31CEF7776131606C2A68F2A51E7A3DDFF5BFDBFA8939CE381'
$checksum64 = '4B221AADF19E9F53C804E2E16CDB2111103976E010CDC7D22C340A3FFC78703F '
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$options = @{
  Headers = @{
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
    'Accept-Charset' = 'ISO-8859-1,utf-8;q=0.7,*;q=0.3';
    'Accept-Language' = 'en-US,en;q=0.5';
    Referer = 'https://www.getblackbird.net/download/';
  }
}

$is64bit = Get-ProcessorBits 64
if ($is64bit) {
	$path = "$toolsDir\blackbird_v1.0.4_64\blackbird.exe"
	}
	else{
	$path = "$toolsDir\blackbird_v1.0.4_32\blackbird.exe"
}

$packageArgs = @{
  packageName   = $packageName
  url           = $url
  Url64bit      = $url64
  checksum      = $checksum
  Checksum64    = $checksum64
  checksumType  = $checksumType
  ChecksumType64= $checksumType64
  UnzipLocation = $toolsDir
  Options       = $options
}

Install-ChocolateyZipPackage @packageArgs
