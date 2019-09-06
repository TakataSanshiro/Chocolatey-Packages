$ErrorActionPreference = 'Stop';

$packageName  = 'zeronet'
$url          = 'https://github.com/HelloZeroNet/ZeroNet-win/archive/dist-win64/ZeroNet-py3-win64.zip' 
$checksum     = 'E0B159740B42C05DE96FD8F557C52124B50F66F9E6E142872D9FAEF61556F207'
$checksumType = 'sha256'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
