# Thanks. https://github.com/kevnord/CharlesChocolateyPackage/tree/master/Source
$ErrorActionPreference = 'Stop'; 

$packageArgs = @{
  packageName    = 'charles4'
  fileType       = 'msi' 
  url            = 'https://www.charlesproxy.com/assets/release/4.5.5/charles-proxy-4.5.5-win64.msi'
  silentArgs     = '/qb' 
  validExitCodes = @(0) 
  softwareName   = 'Charles'
  checksum       = 'c11e20de1ffe11a6af6121260ed5e65595758f631fd6165d38e710daa6cc521d'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
