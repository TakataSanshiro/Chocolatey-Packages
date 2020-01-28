$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'jpegtran'
  url            = 'https://jpegclub.org/jpegtran.zip'
  checksum       = 'affe7fccd4d863d5dc746c51a0f239ea3a05cfe864349a5d7efb18562e09ebe4'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'jpegtran*'
}
Install-ChocolateyZipPackage @packageArgs
