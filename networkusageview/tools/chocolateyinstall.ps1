$ErrorActionPreference = 'Stop';

$packageName = 'networkusageview'
$url = 'https://www.nirsoft.net/utils/networkusageview.zip' 
$url64 = 'https://www.nirsoft.net/utils/networkusageview-x64.zip' 
$checksum = 'BD731A452B7B564203DB59D57E9658DAC920DEEBAEC2459D10D424958092A04A'
$checksum64 = '754EEA3689C2ECD60BC4C989E9181CF6956777FDC3303A7582195E90E840E35E'
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