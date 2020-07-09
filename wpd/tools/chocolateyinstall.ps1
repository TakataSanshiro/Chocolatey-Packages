$ErrorActionPreference = 'Stop';

$packageName  = 'wpd'
$url          = 'https://wpd.app/get/latest.zip' 
$checksum     = '016e93a19d961e990a531b631be5967cfbc7dc83d71f5ab86cab115a26d230e2'
$checksumType = 'sha256'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
