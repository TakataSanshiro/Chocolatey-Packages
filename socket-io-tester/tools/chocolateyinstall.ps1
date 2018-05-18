$ErrorActionPreference = 'Stop';

$packageName = 'socket-io-tester'
$url = 'https://github.com/AppSaloon/socket.io-tester/releases/download/v1.2.2/socket-io-tester-win32-ia32.zip' 
$url64 = 'https://github.com/AppSaloon/socket.io-tester/releases/download/v1.2.2/socket-io-tester-win32-x64.zip'
$checksum = '73AF82FA773F86A9D7D05E146781F87C11BD453753247BFC2BF5AFE5C06B5C86'
$checksum64 = 'F6A78392CB53588E859574758B1FCD52AFB3AFD8FE0C413169B34D3FC6BBD9EE'
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
							 