$ErrorActionPreference = 'Stop';

$packageName = 'kuadro'
$url = 'http://kruelgames.com/tools/kuadro/latest' 
$checksum = 'BEDD9F480D7DF47F1D6E14F37726A7DA105CC3641FB38B063138E91856594E6C'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$toolsDir\kuadro-0.8.5.exe" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

# Create an exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\kuadro.lnk" `
						     -TargetPath "$toolsDir\kuadro-0.8.5.exe"
							 