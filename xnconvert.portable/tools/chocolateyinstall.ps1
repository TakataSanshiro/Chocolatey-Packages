$ErrorActionPreference = 'Stop';

$packageName = 'xnconvert.portable'
$url = 'https://download.xnview.com/XnConvert-win.zip' 
$url64 = 'https://download.xnview.com/XnConvert-win-x64.zip'
$checksum = '27C4F7D5821C7077AF6D35E9873A330F83512D29C5CDA83EC7A1765E02106F6F'
$checksum64 = 'EA11B5F68426BF07251087C93EF7705E997D833A91E8D112A89CCAFED663521D'
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
