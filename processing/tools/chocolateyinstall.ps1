$ErrorActionPreference = 'Stop';

$packageName = 'processing'
$url = 'https://github.com/processing/processing/releases/download/processing-0264-3.3.7/processing-3.3.7-windows32.zip'
$checksum = '538AC761C805556DC2E3FE50FE512D681E7A078A6DAA34CFEDFFD5CDF4CE7AC4'
$checksumType = 'sha256'
$url64 = 'https://github.com/processing/processing/releases/download/processing-0264-3.3.7/processing-3.3.7-windows64.zip'
$checksum64 = '1D8EC0940315BD0F677D4358761ED01A1098E4E5A020E736C3AE0D510FBD346A'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"`
                             -Url64bit "$url64" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"
