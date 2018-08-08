$ErrorActionPreference = 'Stop';

$packageName = 'appaudioconfig'
$url = 'https://www.nirsoft.net/utils/appaudioconfig.zip' 
$url64 = 'https://www.nirsoft.net/utils/appaudioconfig-x64.zip' 
$checksum = '95D713C2ACB34E0BEE47E8BD79D7F7BDB9CEEBE0C217C65271ABF495EFAE4527'
$checksum64 = '59168C8031D178BDE27D036B0747983EC61E401C54846214EE2C11820274A5BB'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"`
                             -Url64bit "$url64" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"
