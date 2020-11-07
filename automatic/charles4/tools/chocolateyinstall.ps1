# Thanks. https://github.com/kevnord/CharlesChocolateyPackage/tree/master/Source
$ErrorActionPreference = 'Stop'; 

$packageArgs = @{
  packageName    = 'charles4'
  fileType       = 'msi' 
  url            = 'https://www.charlesproxy.com/assets/release/4.6/charles-proxy-4.6-win64.msi'
  silentArgs     = '/qb' 
  validExitCodes = @(0) 
  softwareName   = 'Charles'
  checksum       = 'a0d079691b5f52566a5705543dac7bd307265de22a703c4567d3b843ae28da54'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
