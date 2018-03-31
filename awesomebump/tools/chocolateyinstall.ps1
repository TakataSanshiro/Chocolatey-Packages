$ErrorActionPreference = 'Stop';

$packageName = 'awesomebump'
$url = 'https://github.com/kmkolasinski/AwesomeBump/releases/download/Winx32v5.1/AwesomeBumpV5.1Bin32x64Win7.zip' 
$checksum = '9AA2C80E1087871B31F6EC26ADFE8CB5D102B05AE147CC7755BF7DDA5118119D'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"					 