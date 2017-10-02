$ErrorActionPreference = 'Stop';

$packageName = 'xnconvert.portable'
$url = 'http://download.xnview.com/XnConvert-win.zip' 
$url64 = 'http://download.xnview.com/XnConvert-win-x64.zip'
$checksum = '51CCC9D4EAB8527DD5FA38BDA5DD2C09FE208E892511BCA957B13F78156D0F3E'
$checksum64 = 'EF20B38B213FB69D35A93A27ECA177644F3CB8EFCD9481ACB10581A1872FE775'
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
