# Thanks. https://github.com/kevnord/CharlesChocolateyPackage/tree/master/Source
$ErrorActionPreference = 'Stop'; 

$packageArgs = @{
  packageName    = 'charles4'
  fileType       = 'msi' 
  url            = 'https://www.charlesproxy.com/assets/release/4.5.6/charles-proxy-4.5.6-win64.msi'
  silentArgs     = '/qb' 
  validExitCodes = @(0) 
  softwareName   = 'Charles'
  checksum       = '4c980c37792e675ea981a9263c8275c5c840a87cd62063d09833d32db2dcbd71'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
