$ErrorActionPreference = 'Stop';

$packageName  = 'wpd'
$url          = 'https://wpd.app/get/latest.zip' 
$checksum     = '11777d500590574d541780e493a2198c33ec2537d26b8fd0279307bd62e43ddb'
$checksumType = 'sha256'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
