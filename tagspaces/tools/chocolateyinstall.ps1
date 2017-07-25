$ErrorActionPreference = 'Stop';

$packageName = 'tagspaces'
$url = 'https://github.com/tagspaces/tagspaces/releases/download/v2.9.0/tagspaces-2.9.0-win32.zip'
$checksum = '70EE435D3DE5BBDA60DC6AF557FADD9F298A44E9D5AC0FB761541558645FD75A'
$checksumType = 'sha256'
$url64 = 'https://github.com/tagspaces/tagspaces/releases/download/v2.9.0/tagspaces-2.9.0-win64.zip'
$checksum64 = '90715746DD577BD517ED06F77BEF4D2AC963152D8C7422D255C19DE4E043FD8E'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
							 -Url64bit "$url64" `
							 -Checksum64 "$checksum64" `
							 -ChecksumType64 "$checksumType64"

# Create an .exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\tagspaces.lnk" `
						     -TargetPath "$toolsDir\tagspaces\tagspaces.exe"
							 