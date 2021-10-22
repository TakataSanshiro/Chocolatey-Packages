$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'postbox'
  installerType = 'exe'
  url           = 'https://d3nx85trn0lqsg.cloudfront.net/win/postbox-7.0.50-win32.exe'
  checksum      = 'c01fb20d98fff7cef59bb1ea767b418950fdb1b445113864b4ef00c5ed29e1fc'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  unzipLocation = $toolsDir
  softwareName  = 'Postbox*'
}

Install-ChocolateyPackage @packageArgs
