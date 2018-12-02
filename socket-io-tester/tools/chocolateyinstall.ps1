$ErrorActionPreference = 'Stop';

$packageName = 'socket-io-tester'
$url = 'https://github.com/AppSaloon/socket.io-tester/releases/download/v1.2.3/socket-io-tester-win32-ia32.zip' 
$url64 = 'https://github.com/AppSaloon/socket.io-tester/releases/download/v1.2.3/socket-io-tester-win32-x64.zip'
$checksum = 'C4E5670C1E05EE84CFDF654612A03656DD5E707931CDC9043ACC80E07CF117C0'
$checksum64 = '8F0E6364690F7BA3B8BE35786985689123994CBB23C5B969E27390F4B36BD669'
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