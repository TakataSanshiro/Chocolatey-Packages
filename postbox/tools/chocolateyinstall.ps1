$ErrorActionPreference = 'Stop';

$packageName= 'postbox'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://d3nx85trn0lqsg.cloudfront.net/win/postbox-6.1.2-win32.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'Postbox*'
  checksum      = 'EE74FDBD65493E795E3C4903A8F231D1A230E3485344DB878626517468D9F092'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
