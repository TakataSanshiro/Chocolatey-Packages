# Thanks. https://github.com/kevnord/CharlesChocolateyPackage/tree/master/Source
$ErrorActionPreference = 'Stop'; 

$packageArgs = @{
  packageName    = 'charles4'
  fileType       = 'msi' 
  url            = 'https://www.charlesproxy.com/assets/release/4.6.4/charles-proxy-4.6.4-win64.msi'
  silentArgs     = "/qb /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0) 
  softwareName   = 'Charles'
  checksum       = 'c2aa21aea1070000c9230dc101904671363bdf360edade5ec0f2dd9f9dedae59'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
