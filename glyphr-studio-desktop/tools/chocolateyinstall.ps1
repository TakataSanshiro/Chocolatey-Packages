$ErrorActionPreference = 'Stop';

$packageName = 'glyphr-studio-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.3.0/Glyphr.Studio-win32-ia32.zip'
$checksum = 'B7F4D46D4BD22C0D35EC05C0B63CC90A4A10DA50D76BD43B25140A93DE2BC92E'
$checksumType = 'sha256'
$url64 = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.3.0/Glyphr.Studio-win32-x64.zip'
$checksum64 = '3125BD5F07A6C5420DA16F8A1F8DC2461E356CEE580EA6A110CB7652151D8094'
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