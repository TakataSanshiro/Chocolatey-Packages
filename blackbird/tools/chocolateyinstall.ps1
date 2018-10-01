$ErrorActionPreference = 'Stop';

$packageName = 'blackbird'
$url = 'https://www.getblackbird.net/download/Blackbird_v1.0.28_x32.zip' 
$url64 = 'https://www.getblackbird.net/download/Blackbird_v1.0.28_x64.zip'
$checksum = '9A2AE0006707DCA44699BBFF4F11C8735EB6130649F3DA35EA721241EFA02A2F'
$checksum64 = 'FA27EAC556546D0A313F8EFD254D520456DE30CD39767252AD5C87317804F9F9'
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
