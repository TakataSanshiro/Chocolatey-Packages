$ErrorActionPreference = 'Stop';

$packageName = 'blackbird'
$url = 'https://www.getblackbird.net/download/Blackbird_v1.0.15_x32.zip' 
$url64 = 'https://www.getblackbird.net/download/Blackbird_v1.0.15_x64.zip'
$checksum = 'E6CF584DECC9BCCFA11FBB153C154C0CC339CD58ACDFDE455FF67111C89102DB'
$checksum64 = 'DAE457D87B316917B60BE9FBAAB52AB733F4085752360C46512A024442C0E5B2'
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
							 