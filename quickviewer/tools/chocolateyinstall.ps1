$ErrorActionPreference = 'Stop';

$packageName = 'quickviewer'
$url = 'https://github.com/kanryu/quickviewer/releases/download/v0.7.6/QuickViewer-0.7.6-x86.zip' 
$url64 = 'https://github.com/kanryu/quickviewer/releases/download/v0.7.6/QuickViewer-0.7.6-x64.zip' 
$checksum = '8A38F8F736539EC70D14784E4F5717C5B507409AE20F1E1CBF9FE9E5B5999ACA'
$checksum64 = '5655B8BE57CEC7D3FA458A295A09541904DC1FA9871DB2E00FF99BCDE0B71CA1'
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
							 