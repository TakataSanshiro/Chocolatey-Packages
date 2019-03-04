$ErrorActionPreference = 'Stop';

$packageName = 'xnconvert.portable'
$url = 'http://download.xnview.com/XnConvert-win.zip' 
$url64 = 'http://download.xnview.com/XnConvert-win-x64.zip'
$checksum = '1991BAF5F37F1FD764D480056A94DF17D81DC505A81E2EA16F22390C24FCC859'
$checksum64 = 'A695F1B8E6F1966A41F86E245ADE1B3F525C31170CF266A5E9418CF2040789B4'
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
