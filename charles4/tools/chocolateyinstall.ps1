# Thanks. https://github.com/kevnord/CharlesChocolateyPackage/tree/master/Source
$ErrorActionPreference = 'Stop'; 

$packageArgs = @{
  packageName    = 'charles4'
  fileType       = 'msi' 
  url            = 'https://www.charlesproxy.com/assets/release/4.5.4/charles-proxy-4.5.4-win64.msi'
  silentArgs     = '/qb' 
  validExitCodes = @(0) 
  softwareName   = 'Charles'
  checksum       = '695f4880e7090ac49f48df573c8ce3f8e60104b198c1df69195404860d8e8a9a'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
