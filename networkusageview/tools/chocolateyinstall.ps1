$ErrorActionPreference = 'Stop';

$packageName = 'networkusageview'
$url = 'https://www.nirsoft.net/utils/networkusageview.zip' 
$url64 = 'https://www.nirsoft.net/utils/networkusageview-x64.zip' 
$checksum = 'CD02930A8F519261B845709704D7FB47A77218C636C4FE97942B1060C815C9E2'
$checksum64 = 'E9A0C8D0A9BB758936B0693D12144E7022C9241CBB9CA8DFD235E25383A2CBC3'
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

# Create a portable execution file shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\NetworkUsageView.lnk" `
						     -TargetPath "$toolsDir\NetworkUsageView\NetworkUsageView.exe"
							 