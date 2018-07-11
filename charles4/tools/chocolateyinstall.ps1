$ErrorActionPreference = 'Stop'; 
# Thanks. https://github.com/kevnord/CharlesChocolateyPackage/tree/master/Source

$packageName= 'charles4' 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.charlesproxy.com/assets/release/4.2.6/charles-proxy-4.2.6-win32.msi'
$url64bit   = 'https://www.charlesproxy.com/assets/release/4.2.6/charles-proxy-4.2.6-win64.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'msi' 
  url           = $url
  url64bit      = $url64

  silentArgs   = '/qb' 
  validExitCodes= @(0) 

  softwareName  = 'Charles' 
  checksum      = 'F423BC11F5F2E149847E3B74F0CCB5B64343AB8EBD3C6D6CEBC479CC96A50DB8'
  checksumType  = 'sha256'
  checksum64    = '8F097C183F3374DCACD89240E6AA183D432915C0C56308562F548EFA228E72D0'
  checksumType64= 'sha256' 
}

Install-ChocolateyPackage @packageArgs