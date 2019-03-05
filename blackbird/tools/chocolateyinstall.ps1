$ErrorActionPreference = 'Stop';

$packageName = 'blackbird'
$url = 'https://www.getblackbird.net/download/Blackbird_v1.0.4_x32.zip' 
$url64 = 'https://www.getblackbird.net/download/Blackbird_v1.0.4_x64.zip'
$checksum = '36FDF1235ABA72E31CEF7776131606C2A68F2A51E7A3DDFF5BFDBFA8939CE381'
$checksum64 = '4B221AADF19E9F53C804E2E16CDB2111103976E010CDC7D22C340A3FFC78703F '
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$is64bit = Get-ProcessorBits 64
if ($is64bit) {
	$path = "$toolsDir\blackbird_v1.0.4_64\blackbird.exe"
	}
	else{
	$path = "$toolsDir\blackbird_v1.0.4_32\blackbird.exe"
}

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
							               -Url64bit "$url64" `
							               -Checksum64 "$checksum64" `
							               -ChecksumType64 "$checksumType64"
