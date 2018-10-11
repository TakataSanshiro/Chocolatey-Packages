$ErrorActionPreference = 'Stop';

$packageName = 'wpd'
$url = 'https://getwpd.com/get/latest.zip' 
$checksum = 'D448FF4DFF659DEE3C261F28ABB22DD12BCA73BC1D6B742CAD1B0D2B8B67CF29'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
