$ErrorActionPreference = 'Stop'; 
# Thanks. https://github.com/kevnord/CharlesChocolateyPackage/tree/master/Source

$packageName= 'charles4' 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.charlesproxy.com/assets/release/4.2.7/charles-proxy-4.2.7-win32.msi'
$url64bit   = 'https://www.charlesproxy.com/assets/release/4.2.7/charles-proxy-4.2.7-win64.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'msi' 
  url           = $url
  url64bit      = $url64

  silentArgs   = '/qb' 
  validExitCodes= @(0) 

  softwareName  = 'Charles' 
  checksum      = '5F085A41322E11820D918FB89EF0394AFE1B8C9354765F7A491D7402087C7174'
  checksumType  = 'sha256'
  checksum64    = '5A088C22E11D34469655D4D2048B239C883D49F1C9025F8160BB835CB9DE8D8E'
  checksumType64= 'sha256' 
}

Install-ChocolateyPackage @packageArgs