$ErrorActionPreference = 'Stop';

$packageName = 'registrychangesview'
$url = 'https://www.nirsoft.net/utils/registrychangesview.zip' 
$url64 = 'https://www.nirsoft.net/utils/registrychangesview-x64.zip' 
$checksum = 'C292E88A8AFB5DBB4A958AE8F9B69D9BC55BACE17F7A8B07A8C4635D3424C2C6'
$checksum64 = '7202DDDAC9C65F63AB76FF695B69C5BF473478E2AD47B7DB27AB15AFC4DD20EB'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir\RegistryChangesView" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"`
							 -Url64bit "$url64" `
							 -Checksum64 "$checksum64" `
							 -ChecksumType64 "$checksumType64"