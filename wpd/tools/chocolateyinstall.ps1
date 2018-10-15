$ErrorActionPreference = 'Stop';

$packageName = 'wpd'
$url = 'https://getwpd.com/get/latest.zip' 
$checksum = '6400088D0C330A327AEB333926F493608D934A3936CCDD07C9A1814D2849726C'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
