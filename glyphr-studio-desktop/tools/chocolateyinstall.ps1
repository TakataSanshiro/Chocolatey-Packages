$ErrorActionPreference = 'Stop';

$packageName = 'glyphr-studio-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.4.3/Glyphr.Studio-win32-ia32.zip'
$checksum = '12524BE99DE6771C96DFB38E652BFA7DB1393E8DAEA1E92B48D653FACE3D1F40'
$checksumType = 'sha256'
$url64 = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.4.3/Glyphr.Studio-win32-x64.zip'
$checksum64 = 'AAC05AB7B37AE40B7DAEED5BAD94B54A1CF3FD5CBDD479A49BAA7712B4E8AF23'
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