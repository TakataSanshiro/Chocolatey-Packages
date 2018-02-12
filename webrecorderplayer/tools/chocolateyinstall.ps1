$ErrorActionPreference = 'Stop';

$packageName = 'webrecorderplayer'
$url = 'https://github.com/webrecorder/webrecorderplayer-electron/releases/download/v1.0.9/webrecorderplayer-electron-win-x86-1.0.9.exe' 
$url64 = 'https://github.com/webrecorder/webrecorderplayer-electron/releases/download/v1.0.9/webrecorderplayer-electron-win-x86_64-1.0.9.exe' 
$checksum = '2EEEED7C3C855173D07BA065AF4CE1BC4B586FDA0B0F83FFF25CD9C3A69585B1'
$checksum64 = 'C55784A8B014509745F959C123DC358BF68E7621098843891CA0742CDA6B6655'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$is64bit = Get-ProcessorBits 64
if ($is64bit) {
	$path = "$toolsDir\webrecorderplayer-electron-win-x86_64-1.0.7.exe"
	}
else{
	$path = "$toolsDir\webrecorderplayer-electron-win-x86-1.0.7.exe"
}

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$path" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType" `
					  -Url64bit "$url64" `
					  -Checksum64 "$checksum64" `
					  -ChecksumType64 "$checksumType64"