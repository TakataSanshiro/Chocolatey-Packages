$ErrorActionPreference = 'Stop';

$packageName = 'socket-io-tester'
$url = 'https://github.com/AppSaloon/socket.io-tester/releases/download/v1.2.1/socket-io-tester-win32-ia32.zip' 
$url64 = 'https://github.com/AppSaloon/socket.io-tester/releases/download/v1.2.1/socket-io-tester-win32-x64.zip'
$checksum = 'D5501AE8A580E4FE05279752596D35A51344356F5E5B36764BD62048399EDCA6'
$checksum64 = '176D189F95665B529DA2097FFEB401B0DB84444B22FE34AC4FE8675EF1110A8E'
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
							 