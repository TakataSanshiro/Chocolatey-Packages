$ErrorActionPreference = 'Stop';

$packageName    = 'registrychangesview'
$url            = 'https://www.nirsoft.net/utils/registrychangesview.zip' 
$url64          = 'https://www.nirsoft.net/utils/registrychangesview-x64.zip' 
$checksum       = 'DCF8D6902E2203ABDDAA0CF19335DE2D727D1E1B2BF6EB983FE02BC91E6CBF9D'
$checksum64     = 'A21D1B406A616D8AB53284CFCEA6923830DBABE01B4420ADEC41FB5E715D0AE1'
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