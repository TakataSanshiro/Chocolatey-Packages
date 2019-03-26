$ErrorActionPreference = 'Stop';

$packageName = 'dnspy'
$url = 'https://github.com/0xd4d/dnSpy/releases/download/v6.0.4/dnSpy-net472.zip' 
$checksum = '68C0334F921F542B29CC9DB670018C46A34E1E9AA81F996C51A3A9EA656479F1'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
