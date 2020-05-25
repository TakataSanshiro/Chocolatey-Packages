$ErrorActionPreference = 'Stop';

$packageName  = 'wpd'
$url          = 'https://wpd.app/get/latest.zip' 
$checksum     = '9be4cc83d00ea4029156a98704556d37637ae5aae8d4bd37cdc6dfeba76cfdf7'
$checksumType = 'sha256'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
