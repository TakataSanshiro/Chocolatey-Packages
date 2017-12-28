$ErrorActionPreference = 'Stop';

$packageName = 'networkusageview'
$url = 'https://www.nirsoft.net/utils/networkusageview.zip' 
$url64 = 'https://www.nirsoft.net/utils/networkusageview-x64.zip' 
$checksum = 'E8B017FA4078E853725944B822EFF09867DA7E5E61FA2641AAD52046A43249CB'
$checksum64 = '4EC6D75F30F5CB11CEE4CEE6862E4B505F5EDBD0BB492F8092306BEC6D158C0D'
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
							 