$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'postbox'
  installerType = 'exe'
  url           = 'https://d3nx85trn0lqsg.cloudfront.net/win/postbox-7.0.18-win32.exe'
  checksum      = 'b96a64a373881652f02cab22f5ba9a23e6948f5a7e9c9d0760c2cd5b4709deb7'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  unzipLocation = $toolsDir
  softwareName  = 'Postbox*'
}

Install-ChocolateyPackage @packageArgs
