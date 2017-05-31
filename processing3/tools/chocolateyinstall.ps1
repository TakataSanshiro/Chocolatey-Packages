$ErrorActionPreference = 'Stop';

$packageName = 'processing3'
$url = 'https://github.com/processing/processing/releases/download/processing-0260-3.3.3/processing-3.3.3-windows32.zip' 
$checksum = 'FBDB6F91A85122BC98BCE3D0571EDD3FA18ACA36321A3ED271F406A06FEBB15A'
$checksumType = 'sha256'
$url64 = 'https://github.com/processing/processing/releases/download/processing-0260-3.3.3/processing-3.3.3-windows64.zip'
$checksum64 = '0B3D8ACF5590AFC1FA2EA2FBE4A34FD8B9499038FD02B944E7B1BE9509A92295'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"`
                             -Url64bit "$url64" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

# Create an .exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\Processing3.lnk" `
						     -TargetPath "$toolsDir\processing-3.3.3\processing.exe"
