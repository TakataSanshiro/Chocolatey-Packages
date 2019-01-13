$ErrorActionPreference = 'Stop';

$packageName = 'steam-cleaner'
$url = 'https://github.com/Codeusa/SteamCleaner/releases/download/2.4/SteamCleaner.exe' 
$checksum = 'C7319112D5C5C7C666CCD8BBAC622FBE6E4845BCF309FE269EC86314CD936579'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$toolsDir\SteamCleaner.exe" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

# Create an exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\Steam Cleaner.lnk" `
						     -TargetPath "$toolsDir\SteamCleaner.exe"
							 
