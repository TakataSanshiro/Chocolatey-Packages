$ErrorActionPreference = 'Stop'; 
# Thanks. https://github.com/kevnord/CharlesChocolateyPackage/tree/master/Source

$packageName= 'charles4' 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.charlesproxy.com/assets/release/4.2.1/charles-proxy-4.2.1-win32.msi'
$url64bit   = 'https://www.charlesproxy.com/assets/release/4.2.1/charles-proxy-4.2.1-win64.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'msi' 
  url           = $url
  url64bit      = $url64

  silentArgs   = '/qb' 
  validExitCodes= @(0) 

  softwareName  = 'Charles' 
  checksum      = '6F66C71766E40B092CBEC40915CEA1B6D3AFF0B06BD8BAE75C64F8200268BC19'
  checksumType  = 'sha256'
  checksum64    = 'AEE28384C16E509268F042838E19FDE94CF27AAC1FE539C304A32096C0620111'
  checksumType64= 'sha256' 
}

Install-ChocolateyPackage @packageArgs