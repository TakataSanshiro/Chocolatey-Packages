$ErrorActionPreference = 'Stop';

$packageName = 'wpd'
$url = 'https://wpd.app/get/latest.zip' 
$checksum = 'A4537EA6AE73DE5D29367B802C2DE0D191109BC7E210BF9E46E6BA70C1628E74'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
