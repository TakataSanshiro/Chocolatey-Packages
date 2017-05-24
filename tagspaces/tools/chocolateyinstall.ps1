$ErrorActionPreference = 'Stop';

$packageName = 'tagspaces'
$url = 'https://github.com/tagspaces/tagspaces/releases/download/v2.8.0/tagspaces-2.8.0-win32.zip'
$checksum = '6159D3FEC31F315AF7B2BA74A0BE59F3F365CE91AE9345BBAC1C77347C83D81A'
$checksumType = 'sha256'
$url64 = 'https://github.com/tagspaces/tagspaces/releases/download/v2.8.0/tagspaces-2.8.0-win64.zip'
$checksum64 = 'F417BEEE16031603E3B14F1FFE99683FABBD97CC544822D2DD10560DBD9A7421'
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
							 