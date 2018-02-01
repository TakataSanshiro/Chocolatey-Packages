$ErrorActionPreference = 'Stop';

$packageName = 'xnconvert.portable'
$url = 'http://download.xnview.com/XnConvert-win.zip' 
$url64 = 'http://download.xnview.com/XnConvert-win-x64.zip'
$checksum = '5B214A43351C31E403EC77A9C84801724FDE7043E44FC460A401D7CB9D978327'
$checksum64 = '01597416FC7567BBBCB521542C478DF0A206191966C926B8772DB746734E174A'
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
