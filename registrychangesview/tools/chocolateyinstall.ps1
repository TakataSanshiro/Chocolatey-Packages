$ErrorActionPreference = 'Stop';

$packageName = 'registrychangesview'
$url = 'https://www.nirsoft.net/utils/registrychangesview.zip' 
$url64 = 'https://www.nirsoft.net/utils/registrychangesview-x64.zip' 
$checksum = 'BEF0B53CBCC618B56371CFDFA6025E2B19AD8D72ACBEB1F7A49FCC879034CB1B'
$checksum64 = 'D5A9417EA67A5EAF00F89623F5B913ECED99F7D3DF5279791063E9BB7DB65D78'
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