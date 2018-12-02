$ErrorActionPreference = 'Stop';

$packageName = 'xnconvert.portable'
$url = 'http://download.xnview.com/XnConvert-win.zip' 
$url64 = 'http://download.xnview.com/XnConvert-win-x64.zip'
$checksum = '9BCE1B31EBAD1BCFD1BBCDAC2900E6F448727FDB3DD815BE0DCC73808A7A90D7'
$checksum64 = '40FCC56C2852280A88AC100FDBE49D20D20999998E788E48641FE85D7EE4C0EB'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
							               -Url64bit "$url64" `
							               -Checksum64 "$checksum64" `
							               -ChecksumType64 "$checksumType64"
