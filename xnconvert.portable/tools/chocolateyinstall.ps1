$ErrorActionPreference = 'Stop';

$packageName = 'xnconvert.portable'
$url = 'http://download.xnview.com/XnConvert-win.zip' 
$url64 = 'http://download.xnview.com/XnConvert-win-x64.zip'
$checksum = '855EEE41391E730FC2825303CB2AAA01A519B230B99ABFB0F71C943089FFADE7'
$checksum64 = 'B9B04B8BFE84BD0C4C2CDFED6DD59728F6D99C8070255403D809D8E06CC81493'
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
