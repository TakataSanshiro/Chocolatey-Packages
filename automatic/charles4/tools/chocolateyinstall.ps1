# Thanks. https://github.com/kevnord/CharlesChocolateyPackage/tree/master/Source
$ErrorActionPreference = 'Stop'; 

$packageArgs = @{
  packageName    = 'charles4'
  fileType       = 'msi' 
  url            = 'https://www.charlesproxy.com/assets/release/4.6.1/charles-proxy-4.6.1-win64.msi'
  silentArgs     = '/qb' 
  validExitCodes = @(0) 
  softwareName   = 'Charles'
  checksum       = '60f0bb358eff3a774cda0bd62a1720bfe9e4ef51b848e77b4db41aee9d160912'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
