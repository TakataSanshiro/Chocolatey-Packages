$ErrorActionPreference = 'Stop';

$packageName= 'jpegtran'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://jpegclub.org/jpegtran.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url

  checksum      = '8E587EF4DD73AEE34B3764B2B2ACDDFACF6DC0D53EFF2FC9D0BF05A48FA9EF99'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
