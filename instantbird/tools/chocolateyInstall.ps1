$ErrorActionPreference = 'Stop';

$packageName= 'instantbird'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://instantbird.com/downloads/1.5/instantbird-1.5.en-US.win32.installer.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  silentArgs   = '/S'
  softwareName  = 'Instantbird*'
  checksum      = '363D98DC34D5B3EB525ED16CC3678AFAC70FAC84E93ADDBC81BE08407BE6EB90'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
