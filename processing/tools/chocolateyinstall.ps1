$ErrorActionPreference = 'Stop';

$packageName = 'processing'
$url = 'https://github.com/processing/processing/releases/download/processing-0269-3.5.3/processing-3.5.3-windows32.zip'
$checksum = 'DC88E5BFF6B74ED8C4E17E0B991F32D2952DD82510E614954A665E88FB4BE744'
$checksumType = 'sha256'
$url64 = 'https://github.com/processing/processing/releases/download/processing-0269-3.5.3/processing-3.5.3-windows64.zip'
$checksum64 = 'AF4DB4AF445C10E0B48BE2D0CA4798FD44BFD94156A670AC15BE2B275F975137'
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
