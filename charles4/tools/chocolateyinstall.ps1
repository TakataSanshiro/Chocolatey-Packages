$ErrorActionPreference = 'Stop'; 
# Thanks. https://github.com/kevnord/CharlesChocolateyPackage/tree/master/Source

$packageName= 'charles4' 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.charlesproxy.com/assets/release/4.2.5/charles-proxy-4.2.5-win32.msi'
$url64bit   = 'https://www.charlesproxy.com/assets/release/4.2.5/charles-proxy-4.2.5-win64.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'msi' 
  url           = $url
  url64bit      = $url64

  silentArgs   = '/qb' 
  validExitCodes= @(0) 

  softwareName  = 'Charles' 
  checksum      = '244D6E3489ADEF8E64AD57CF68A51E515F2B4E44D42972FEC887567A05B0538F'
  checksumType  = 'sha256'
  checksum64    = '95F999CE90C73544368F18AC9502D79EE811E1EABB5E37A0C9B71464C805120A'
  checksumType64= 'sha256' 
}

Install-ChocolateyPackage @packageArgs