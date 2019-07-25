$ErrorActionPreference = 'Stop';

$packageName    = 'registrychangesview'
$url            = 'https://www.nirsoft.net/utils/registrychangesview.zip' 
$url64          = 'https://www.nirsoft.net/utils/registrychangesview-x64.zip' 
$checksum       = '39A361D63ABF877BC5774B0E3EE1FB39E2EBB827AC8A731058DA21899D71ED75'
$checksum64     = 'CAA1573AE066D1B1882D7B94F3AB648A18752474F272F0DABF902E9DF9155A46'
$checksumType   = 'sha256'
$checksumType64 = 'sha256'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir\RegistryChangesView" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"`
							               -Url64bit "$url64" `
							               -Checksum64 "$checksum64" `
							               -ChecksumType64 "$checksumType64"