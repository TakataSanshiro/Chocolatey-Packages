$ErrorActionPreference = 'Stop';

$packageName = 'webrecorderplayer'
$url = 'https://github.com/webrecorder/webrecorderplayer-electron/releases/download/v1.0.6/webrecorderplayer-electron-x86-1.0.6.exe' 
$url64 = 'https://github.com/webrecorder/webrecorderplayer-electron/releases/download/v1.0.6/webrecorderplayer-electron-x86_64-1.0.6.exe' 
$checksum = 'DAE18940793936CCBA4FA0F10CB6D36BDFBF3E6C4DBF8A2B95511287EE21A29C'
$checksum64 = 'F92D7622B6DEA96E426E3FFFB2C9A18112AE05BD5EE8DCDC2C91421AA3C7FD0D'
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