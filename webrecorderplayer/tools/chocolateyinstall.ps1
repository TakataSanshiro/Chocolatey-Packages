$ErrorActionPreference = 'Stop';

$packageName = 'webrecorderplayer'
$url = 'https://github.com/webrecorder/webrecorderplayer-electron/releases/download/v1.0.7/webrecorderplayer-electron-win-x86-1.0.7.exe' 
$url64 = 'https://github.com/webrecorder/webrecorderplayer-electron/releases/download/v1.0.7/webrecorderplayer-electron-win-x86_64-1.0.7.exe' 
$checksum = '638048B396A2EFCAA0FC4F1506EB497CAF4C010EB6CF47F3A536915342C23710'
$checksum64 = 'E5F3F42B4B9D51AA643591EBA2FB9BFF2927B761B831A4DCE81971D619D980B0'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$toolsDir\webrecorderplayer-electron-1.0.6.exe" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType" `
					  -Url64bit "$url64" `
					  -Checksum64 "$checksum64" `
					  -ChecksumType64 "$checksumType64"