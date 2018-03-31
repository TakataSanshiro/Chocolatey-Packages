$ErrorActionPreference = 'Stop';

$packageName = 'networkusageview'
$url = 'https://www.nirsoft.net/utils/networkusageview.zip' 
$url64 = 'https://www.nirsoft.net/utils/networkusageview-x64.zip' 
$checksum = 'E10E8BF003AA0399E9D305A453984F03214F4B5EF1B936C4B5B7F517B2F08DCA'
$checksum64 = '3B4DE0208725B430E6BF06101A62237BF6B296FA76A9C9D8CA6286DF7F8E669C'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir\NetworkUsageView" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"`
							 -Url64bit "$url64" `
							 -Checksum64 "$checksum64" `
							 -ChecksumType64 "$checksumType64"