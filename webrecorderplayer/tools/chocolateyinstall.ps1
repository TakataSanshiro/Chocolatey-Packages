$ErrorActionPreference = 'Stop';

$packageName = 'webrecorderplayer'
$url = 'https://github.com/webrecorder/webrecorder-player/releases/download/v1.6.4/webrecorder-player-win-x86-1.6.4.exe' 
$url64 = 'https://github.com/webrecorder/webrecorder-player/releases/download/v1.6.4/webrecorder-player-win-x86_64-1.6.4.exe' 
$checksum = '3519A1959E0262B67D81DD8BC060686AD29272E6D4B96ED2FFA37ACDBAEA4FF3'
$checksum64 = 'B2BEEA0893A95AA169E197035B6FAD57902C2A9349412E8058C4BB9F6EF04047'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$is64bit = Get-ProcessorBits 64
if ($is64bit) {
	$path = "$toolsDir\webrecorder-player-win-x86_64-1.6.4.exe"
	}
else{
	$path = "$toolsDir\webrecorder-player-win-x86-1.6.4.exe"
}

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$path" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType" `
					            -Url64bit "$url64" `
					            -Checksum64 "$checksum64" `
					            -ChecksumType64 "$checksumType64"