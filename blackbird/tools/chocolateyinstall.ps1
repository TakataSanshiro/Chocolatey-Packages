$ErrorActionPreference = 'Stop';

$packageName = 'blackbird'
$url = 'http://getblackbird.net/download/BlackbirdV6_v0.9.98-x86.zip' 
$url64 = 'http://getblackbird.net/download/BlackbirdV6_v0.9.98-x64.zip'
$checksum = 'AD20057AAEAA8CA41D57C436DA22515EDB394003D69F29440E6F1802B99677F8'
$checksum64 = 'B14ABE7B4AF30CBC5EDDFC72E8D66905CB2244526F93286343D8C52878A8B03E'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
$is64bit = Get-ProcessorBits 64
if ($is64bit) {
	$path = "$toolsDir\blackbird_v0.9.98_64\blackbird.exe"
	}
	else{
	$path = "$toolsDir\blackbird_v0.9.98_32\blackbird.exe"
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
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\blackbird.lnk" `
						     -TargetPath "$path"
							 