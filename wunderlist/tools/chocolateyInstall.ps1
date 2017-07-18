$ErrorActionPreference = 'Stop';

$packageName= 'wunderlist'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3-eu-west-1.amazonaws.com/wunderlist-windows/win7/Wunderlist-Setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  silentArgs   = '/S'
  softwareName  = 'Wunderlist*'
  checksum      = '7A11543562FA6A65D7CD28A21803FA568F08D41FF1E15FA14AE1DE3EE0EA407E'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
