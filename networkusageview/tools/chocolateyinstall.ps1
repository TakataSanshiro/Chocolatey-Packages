$ErrorActionPreference = 'Stop';

$packageName = 'networkusageview'
$url = 'https://www.nirsoft.net/utils/networkusageview.zip' 
$url64 = 'https://www.nirsoft.net/utils/networkusageview-x64.zip' 
$checksum = '39926F6BC7A8B3632895A329A9F13FBCDCD1A4A0A716A599D5759AF5FC9EBCC9'
$checksum64 = '3788B3BE3FBDBBEFB3B9D7680D0C3709B1CAB698648ADF78C2BC6CE9CCBC0808'
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
							 