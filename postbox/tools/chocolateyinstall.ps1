$ErrorActionPreference = 'Stop';

$packageName= 'postbox'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/download.getpostbox.com/installers/5.0.15/1_4adb5f16e3512a55ba2377a4dc420b193e6d13af/postbox-5.0.15-win32.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'Postbox*'
  checksum      = '1E5F47EBB13A639734704A15A65386C151FD0B38A4DE18940BAFCA13A44EA7FB'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
