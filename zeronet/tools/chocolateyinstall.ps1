$ErrorActionPreference = 'Stop';

$packageName = 'zeronet'
$url = 'https://github.com/HelloZeroNet/ZeroNet-win/archive/dist/ZeroNet-win.zip' 
$checksum = '4E83376D65E20D973EBC2E3EB83AA489641511630449C5E6FDF88685B662D640'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
