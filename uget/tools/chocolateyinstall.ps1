$ErrorActionPreference = 'Stop';

$packageName  = 'uget'
$url          = 'https://downloads.sourceforge.net/project/urlget/uget%20%28stable%29/2.2.2/uget-2.2.2-win32%2Bgtk3.7z?r=&ts=1566914697&use_mirror=svwh' 
$checksum     = '340F7C4622428704B76BB34F93BC4129313E89D66071D73FA0CCE2DC259F48A3'
$checksumType = 'sha256'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
