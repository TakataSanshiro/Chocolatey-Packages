$ErrorActionPreference = 'Stop';

$packageName = 'registrychangesview'
$url = 'https://www.nirsoft.net/utils/registrychangesview.zip' 
$url64 = 'https://www.nirsoft.net/utils/registrychangesview-x64.zip' 
$checksum = '8FCCDFEE1914212706E07ABCE39F0FD116C9D1BED08EB9C3CF9925AA8FA667B3'
$checksum64 = 'E52DC1BC29219BD19384E8986F1E81834C1352FB68ECC1410BCC53C0785C8007'
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