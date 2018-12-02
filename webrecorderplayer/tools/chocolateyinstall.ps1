$ErrorActionPreference = 'Stop';

$packageName = 'webrecorderplayer'
$url = 'https://github.com/webrecorder/webrecorder-player/releases/download/v1.6.1/webrecorder-player-win-x86-1.6.1.exe' 
$url64 = 'https://github.com/webrecorder/webrecorder-player/releases/download/v1.6.1/webrecorder-player-win-x86_64-1.6.1.exe' 
$checksum = 'CD1A1587BA59C01EFE127467AC37CD20AD72465046402F1B3E031AF6A8734353'
$checksum64 = '4D6A949B682270424E0BB4427103B0AE73E6E1D92EA3E1AB5A8F64A4C79C7CF0'
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