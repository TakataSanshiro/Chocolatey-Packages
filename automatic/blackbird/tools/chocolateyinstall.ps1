$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'blackbird'
  url            = 'https://www.getblackbird.net/download/Blackbird_v1.0.79.2%5Fx32.zip' 
  Url64          = 'https://www.getblackbird.net/download/Blackbird_v1.0.79.2%5Fx64.zip'
  checksum       = 'd49951c28db58e53ab86f40b8abb44542db3d544d8864440daf07179c3e1712a'
  Checksum64     = '85a5dd955c755f3b049955b06ef2d2a1bcc7955e5289ce48ffae0861388dbc87'
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
