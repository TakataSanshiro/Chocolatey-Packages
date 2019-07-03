$ErrorActionPreference = 'Stop';

$packageName  = 'zeronet'
$url          = 'https://github.com/HelloZeroNet/ZeroNet-win/archive/dist/ZeroNet-win.zip' 
$checksum     = '11AA3D06CF09F57EB1DE1B15763D0A10773CDF77FE8E8F21C780053A345146CC'
$checksumType = 'sha256'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
