$ErrorActionPreference = 'Stop';

$packageName = 'webrecorderplayer'
$url = 'https://github.com/webrecorder/webrecorderplayer-electron/releases/download/v1.0.5/webrecorderplayer-electron-1.0.5.exe' 
$checksum = 'CD3AC6911031A541E74A4F55ED3A17FDCA473FB1FD7F741902C0C680C217FA3C'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$toolsDir\webrecorderplayer-electron-1.0.4.exe" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

# Create an exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\Webrecorder Player.lnk" `
						     -TargetPath "$toolsDir\webrecorderplayer-electron-1.0.4.exe"
							 