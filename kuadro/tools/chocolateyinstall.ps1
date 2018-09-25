$ErrorActionPreference = 'Stop';

$packageName = 'kuadro'
$url = 'http://kruelgames.com/static/kuadro-0.9.5.exe'
$checksum = 'B54DBEF113D83A25973EAAA3EEB8B34A4AEAF4EE638444EAF05D0A212863AC29'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$toolsDir\kuadro-0.9.5.exe" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

# Create an exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\kuadro.lnk" `
						     -TargetPath "$toolsDir\kuadro-0.9.5.exe"
