$ErrorActionPreference = 'Stop';

$packageName = 'registrychangesview'
$url = 'https://www.nirsoft.net/utils/registrychangesview.zip' 
$url64 = 'https://www.nirsoft.net/utils/registrychangesview-x64.zip' 
$checksum = '54A75493EA571E676E1BDDFBC4B8F34F51DAAB84C765A7E4E2938624EACFCFA8'
$checksum64 = '43BBDAC0F7A39BA41157AAB6DEF5C86C381F2287610117A5A0955F350CA5DF2F'
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