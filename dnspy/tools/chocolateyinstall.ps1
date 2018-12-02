$ErrorActionPreference = 'Stop';

$packageName = 'dnspy'
$url = 'https://github.com/0xd4d/dnSpy/releases/download/v5.0.0/dnSpy.zip' 
$checksum = '4571CCF630C408B0AF5E01ABC012C1B9354733C33DC1F5C70903169F0C0F065C'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"