$ErrorActionPreference = 'Stop';

$packageName = 'winquicklook'
$url = 'https://github.com/shibayan/WinQuickLook/releases/download/v1.1.31/WinQuickLook.zip' 
$checksum = '5A0DEC8CE886A262FE71EEAAB0CF26C47A11643C8CA85876D238F1937A060C46'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create an exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\WinQuickLook.lnk" `
						     -TargetPath "$toolsDir\WinQuickLook.exe"