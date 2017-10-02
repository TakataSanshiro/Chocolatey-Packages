$ErrorActionPreference = 'Stop';

$packageName = 'quickviewer'
$url = 'https://github.com/kanryu/quickviewer/releases/download/v1.0.0/QuickViewer-1.0.0-x86.zip' 
$url64 = 'https://github.com/kanryu/quickviewer/releases/download/v1.0.0/QuickViewer-1.0.0-x64.zip' 
$checksum = '89C1D6E77A67FB8B3A0B2C2251DB744D290E85FC3053B5ACC78539821D5F930E'
$checksum64 = 'BFD22959153E17C02417E0F8C469E267CFF9277D47599BAF07F2248736627942'
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
							 