# Thanks. https://github.com/kevnord/CharlesChocolateyPackage/tree/master/Source
$ErrorActionPreference = 'Stop'; 

$packageArgs = @{
  packageName    = 'charles4'
  fileType       = 'msi' 
  url            = 'https://www.charlesproxy.com/assets/release/4.6.3/charles-proxy-4.6.3-win64.msi'
  silentArgs     = "/qb /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0) 
  softwareName   = 'Charles'
  checksum       = 'efb8f5cda02bd6bc42860e7069ada57cd97c5d81e0965a718a419125e65c7f31'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
