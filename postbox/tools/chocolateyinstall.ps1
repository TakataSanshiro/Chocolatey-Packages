$ErrorActionPreference = 'Stop';

$packageName= 'postbox'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/download.getpostbox.com/installers/6.0.8/1_2a08007f8e141ca2b84e20ac7f7ce60203b04054/postbox-6.0.8-win32.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'Postbox*'
  checksum      = 'F999FBB0FF87E8C2587373A0BA1D07999934819297613BA57AD47113242487C1'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
