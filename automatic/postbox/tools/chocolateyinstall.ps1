$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'postbox'
  installerType = 'exe'
  url           = 'https://d3nx85trn0lqsg.cloudfront.net/win/postbox-7.0.6-win32.exe'
  checksum      = '596ebbb718eb267fff41b8481ba6cdc3fc7272218c0fb9b336166d57e71c78ea'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  unzipLocation = $toolsDir
  softwareName  = 'Postbox*'
}

Install-ChocolateyPackage @packageArgs
