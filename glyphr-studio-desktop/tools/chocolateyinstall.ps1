$ErrorActionPreference = 'Stop';

$packageName = 'glyphr-studio-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.4.0/Glyphr.Studio-win32-ia32.zip'
$checksum = 'EC548D6EA24C00758B59E45057A4A21700B266809C092C5F8F36EB8D98256F79'
$checksumType = 'sha256'
$url64 = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.4.0/Glyphr.Studio-win32-x64.zip'
$checksum64 = '176D4FCAFFFE11FCB6ECD9FD3F44625617FBC25CC779D172EB188C810FC6B1E7'
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