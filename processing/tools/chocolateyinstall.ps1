$ErrorActionPreference = 'Stop';

$packageName = 'processing'
$url = 'https://github.com/processing/processing/releases/download/processing-0265-3.4/processing-3.4-windows32.zip'
$checksum = '971FB0360E1A5ED51EA300E91651BB8BA6E95B5BEB983E9847BBEC267621049E'
$checksumType = 'sha256'
$url64 = 'https://github.com/processing/processing/releases/download/processing-0265-3.4/processing-3.4-windows64.zip'
$checksum64 = '5EF6B2D59A82B3900F3FBDC6A816CCEA9BCC67DFCE8A7A240476CB26A74DAC80'
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
