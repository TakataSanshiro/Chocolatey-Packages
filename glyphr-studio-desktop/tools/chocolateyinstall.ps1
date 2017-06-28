$ErrorActionPreference = 'Stop';

$packageName = 'glyphr-studio-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.2.3/Glyphr.Studio-win32-ia32.zip'
$checksum = 'DE62D64C4D0348F6058C0D39931807B258F250594616CC5F8DF7DF27230C1120'
$checksumType = 'sha256'
$url64 = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.2.3/Glyphr.Studio-win32-x64.zip'
$checksum64 = '14EC0169E55DFEB97910F11B81160E9787B962A33FB265BEEF40692CF8A7CE12'
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