$ErrorActionPreference = 'Stop';

$packageName = 'uget'
$url = 'https://downloads.sourceforge.net/project/urlget/uget (stable)/2.2.1/uget-2.2.1-win32+gtk3.7z?r=&ts=1522519163&use_mirror=svwh' 
$checksum = 'A722BD02A6D77AC24B8BB7D1B3A6C7F37CA4DBAB40859264B1E50DEDBCDA584A'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"					 