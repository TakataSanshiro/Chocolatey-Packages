$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/toolsdownload/routerpassview.zip'
  checksum       = '0D68FB19CA14C8200F9015703F728628BC3DD3B76614B709D1DA5821FCEB4ABA'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RouterPassView'
  options = @{
    Headers = @{
      Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
      'Accept-Charset' = 'ISO-8859-1,utf-8;q=0.7,*;q=0.3';
      'Accept-Language' = 'en-US,en;q=0.5';
      Referer = 'http://www.nirsoft.net/utils/';
    }
  }
}
Install-ChocolateyZipPackage @packageArgs
