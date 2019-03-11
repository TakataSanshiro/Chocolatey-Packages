$ErrorActionPreference = 'Stop'; 
# Thanks. https://github.com/kevnord/CharlesChocolateyPackage/tree/master/Source

$packageName= 'charles4' 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.charlesproxy.com/assets/release/4.2.8/charles-proxy-4.2.8-win32.msi'
$url64bit   = 'https://www.charlesproxy.com/assets/release/4.2.8/charles-proxy-4.2.8-win64.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'msi' 
  url           = $url
  url64bit      = $url64

  silentArgs   = '/qb' 
  validExitCodes= @(0) 

  softwareName  = 'Charles' 
  checksum      = 'FDFEC8E011170F970C4D7104B7E3D8FB5CDE2AA47E344BF4D35FEB2F785937D8'
  checksumType  = 'sha256'
  checksum64    = '448FB0B76A0ECCD93580C986F77D5621C7CA7B2E138588436DC30DE67436308E'
  checksumType64= 'sha256' 
}

Install-ChocolateyPackage @packageArgs