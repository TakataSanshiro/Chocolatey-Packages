$ErrorActionPreference = 'Stop';

$packageName = 'glyphr-studio-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.4.2/Glyphr.Studio-win32-ia32.zip'
$checksum = 'CCE9FB3836578C2947619FD28996FA94199ABBF631B5D69969A2B7B9235CC3E4'
$checksumType = 'sha256'
$url64 = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.4.2/Glyphr.Studio-win32-x64.zip'
$checksum64 = '8919A92FCAE916419B84EF380D1AC4CDAF8A1D558EC06A991665CDD2E6226CBF'
$checksumType64 = 'sha256'

$is64bit = Get-ProcessorBits 64
if ($is64bit) {
	$path = "$toolsDir\Glyphr Studio-win32-x64\Glyphr Studio.exe"
	}
	else{
	$path = "$toolsDir\Glyphr Studio-win32-ia32\Glyphr Studio.exe"
}

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Url64bit "$url64" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

# Create an exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\Glyphr Studio Desktop.lnk" `
						     -TargetPath "$path"