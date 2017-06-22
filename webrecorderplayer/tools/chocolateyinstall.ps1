$ErrorActionPreference = 'Stop';

$packageName = 'webrecorderplayer'
$url = 'https://github.com/webrecorder/webrecorderplayer-electron/releases/download/v1.0.4/webrecorderplayer-electron-1.0.4.exe' 
$checksum = '6704157CD74F1A6E1C23534BD759AEAE4FC3C351EB1E4953EC54DA5C38115D8B'
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
							 