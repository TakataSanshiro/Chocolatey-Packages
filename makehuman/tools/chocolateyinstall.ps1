$ErrorActionPreference = 'Stop';

$packageName = 'makehuman'
$url = 'https://download.tuxfamily.org/makehuman/releases/1.1.1/makehuman-1.1.1-win32.zip' 
$checksum = '913A60823F5E4AB73ED9614EE60E71CCF3D8234A3257DA9DC980A25447FB842E'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
