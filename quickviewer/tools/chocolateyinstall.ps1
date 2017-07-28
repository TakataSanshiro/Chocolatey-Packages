$ErrorActionPreference = 'Stop';

$packageName = 'quickviewer'
$url = 'https://github.com/kanryu/quickviewer/releases/download/v0.8.5_rev2/QuickViewer-0.8.5-x86.zip' 
$url64 = 'https://github.com/kanryu/quickviewer/releases/download/v0.8.5_rev2/QuickViewer-0.8.5-x64.zip' 
$checksum = 'C07369D25283D8A5233A0BBAC7A5D141FE7B4F9015A55323A192FE8D97348A6F'
$checksum64 = 'DAF5533F51EBA2BCC5DE63C19CAF92389F37502FCBCD967E38EDE22F723C26C2'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$is64bit = Get-ProcessorBits 64
if ($is64bit) {
	$path = "$toolsDir\QuickViewer-0.7.6-x64\QuickViewer.exe"
	}
	else{
	$path = "$toolsDir\QuickViewer-0.7.6-x86\QuickViewer.exe"
}

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"`
							 -Url64bit "$url64" `
							 -Checksum64 "$checksum64" `
							 -ChecksumType64 "$checksumType64"

# Create a portable execution file shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\QuickViewer.lnk" `
						     -TargetPath "$path"
							 