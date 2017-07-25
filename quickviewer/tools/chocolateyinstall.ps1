$ErrorActionPreference = 'Stop';

$packageName = 'quickviewer'
$url = 'https://github.com/kanryu/quickviewer/releases/download/v0.8.3/QuickViewer-0.8.3-x86.zip' 
$url64 = 'https://github.com/kanryu/quickviewer/releases/download/v0.8.3/QuickViewer-0.8.3-x64.zip' 
$checksum = '9342EBA67EDED87A00E9D9DDC6C46A751DC78858C4A22E96D3C120FD98BD980F'
$checksum64 = 'B891E33366BEF05DF09E3A6F91F13E4F772918B988C42A1A04B20A089497C788'
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
							 