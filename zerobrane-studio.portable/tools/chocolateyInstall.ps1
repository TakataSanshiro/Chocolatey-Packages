$ErrorActionPreference = 'Stop';

$packageName = 'zerobrane-studio.portable'
$url = 'https://download.zerobrane.com/ZeroBraneStudioEduPack-1.80-win32.zip' 
$checksum = '5B47B7C1825CDF04742138796DA066B75692BBFE967042058138403ABFA5F783'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"