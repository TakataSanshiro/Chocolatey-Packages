$ErrorActionPreference = 'Stop';

$packageName = 'dnspy'
$url = 'https://github.com/0xd4d/dnSpy/releases/download/v5.0.0/dnSpy.zip' 
$checksum = 'BC23DB7B9D4869415A82746201139F918E49A070DBF0A198F53A454206E3978F'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"