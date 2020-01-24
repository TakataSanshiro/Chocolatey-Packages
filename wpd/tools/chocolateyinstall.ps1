$ErrorActionPreference = 'Stop';

$packageName  = 'wpd'
$url          = 'https://wpd.app/get/latest.zip' 
$checksum     = '8e1ba64b2567180063faec11c75cb3eabeabe5d7c1f0de19ebdad4405ddce5b0'
$checksumType = 'sha256'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
