$ErrorActionPreference = 'Stop';

$packageName = 'quickviewer'
$url = 'https://github.com/kanryu/quickviewer/releases/download/v1.0.5/QuickViewer-1.0.5-x86.zip' 
$url64 = 'https://github.com/kanryu/quickviewer/releases/download/v1.0.5/QuickViewer-1.0.5-x64.zip' 
$checksum = '92C08EE0DC90677E2513E1EF6267F5800F986C03F7E6758AABDBDEC9D57142ED'
$checksum64 = 'A055E3C5C61AD417245122FB0910FF2F62F0FF8DCF711754DCF045ADAEB68961'
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
							 