$ErrorActionPreference = 'Stop';

$packageName = 'laverna'
$url = 'https://github.com/Laverna/laverna/releases/download/0.7.51/laverna-0.7.51-win32-ia32.zip'
$checksum = 'B2362EB1C3E24187614BA41E5548DAC2F35F2D411D1902D7F8F616DAD14CEC5C'
$checksumType = 'sha256'
$url64 = 'https://github.com/Laverna/laverna/releases/download/0.7.51/laverna-0.7.51-win32-x64.zip'
$checksum64 = '126ECECB7ADF870B1A2B6AB968B2748CAB7CEC45C5A356D9155055A7F1016E5B'
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
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\laverna.lnk" `
						     -TargetPath "$toolsDir\laverna.exe"
							 