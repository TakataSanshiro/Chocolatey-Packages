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
}

Install-ChocolateyPackage @packageArgs
