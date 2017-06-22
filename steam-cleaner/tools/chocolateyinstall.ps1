$ErrorActionPreference = 'Stop';

$packageName = 'steam-cleaner'
$url = 'https://github.com/Codeusa/SteamCleaner/releases/download/2.3/SteamCleaner.exe' 
$checksum = '119B7E6CEDAE5660C69E6C85284824A6787A08C0522EE1D2140AE9D0180E3DF7'
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
							 