$ErrorActionPreference = 'Stop';

$packageName = 'appaudioconfig'
$url = 'https://www.nirsoft.net/utils/appaudioconfig.zip' 
$url64 = 'https://www.nirsoft.net/utils/appaudioconfig-x64.zip' 
$checksum = '1FDE69EFF818205FA3DBA8EAC0C4CF8409791D03EEEAB09306B90B484D804ABB'
$checksum64 = '770A790A1A36C1374E2761EEF7CC3C7C08DD91E5FE26503EFB831EE66D5A2A1A'
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
