$ErrorActionPreference = 'Stop';

$packageName = 'socket-io-tester'
$url = 'https://github.com/AppSaloon/socket.io-tester/releases/download/v1.1.1/socket-io-tester-win32-ia32.zip' 
$url64 = 'https://github.com/AppSaloon/socket.io-tester/releases/download/v1.1.1/socket-io-tester-win32-x64.zip'
$checksum = '6CDD2A26CFD157ED7266B2EB0A201B08C726CA6FFF8C5A467E71EDD60ED93133'
$checksum64 = '777E043BE5E626B3A93AA685D5438DF20FD532D8D3A75A610E518B5B032626EB'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
$is64bit = Get-ProcessorBits 64
if ($is64bit) {
	$path = "$toolsDir\socket-io-tester-win32-x64\socket-io-tester.exe"
	}
	else{
	$path = "$toolsDir\socket-io-tester-win32-ia32\socket-io-tester.exe"
}
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
							 -Url64bit "$url64" `
							 -Checksum64 "$checksum64" `
							 -ChecksumType64 "$checksumType64"

# Create an .exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\socket.io-tester.exe.lnk" `
						     -TargetPath "$path"
							 