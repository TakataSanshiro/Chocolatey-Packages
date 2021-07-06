# Thanks. https://github.com/kevnord/CharlesChocolateyPackage/tree/master/Source
$ErrorActionPreference = 'Stop'; 

$packageArgs = @{
  packageName    = 'charles4'
  fileType       = 'msi' 
  url            = 'https://www.charlesproxy.com/assets/release/4.6.2/charles-proxy-4.6.2-win64.msi'
  silentArgs     = '/qb /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`"' 
  validExitCodes = @(0) 
  softwareName   = 'Charles'
  checksum       = '02117ac301edbd8a91ac0126c0709dcb3abd88a2f753cf4a369f4ae5950f4baf'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
