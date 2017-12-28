$ErrorActionPreference = 'Stop';

$packageName = 'webrecorderplayer'
$url = 'https://github.com/webrecorder/webrecorderplayer-electron/releases/download/v1.0.8/webrecorderplayer-electron-win-x86-1.0.8.exe' 
$url64 = 'https://github.com/webrecorder/webrecorderplayer-electron/releases/download/v1.0.8/webrecorderplayer-electron-win-x86_64-1.0.8.exe' 
$checksum = 'E862B19D695F73340F97FA3E52D49F524574FACEC151C9FAC6B673BE34DBB435'
$checksum64 = '3A01E803997F52FB04EE9261B7AEAAC911AE08F064A1011E61F8E7C2EC170AA0'
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