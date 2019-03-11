$ErrorActionPreference = 'Stop';

$packageName= 'postbox'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://d3nx85trn0lqsg.cloudfront.net/win/postbox-6.1.11-win32.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'Postbox*'
  checksum      = '5B72D8ED32AF186E1158315EE0FC4308DD690968C38C98088613F4384A0106A2'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
