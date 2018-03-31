$ErrorActionPreference = 'Stop';

$packageName = 'whale'
$url = 'https://github.com/1000ch/whale/releases/download/v0.15.0/Whale-windows-v0.15.0.zip'
$checksum = 'EA5401BB7E02B4184AEBD1F26A381C5E4D52206AEE02829C4D4E1C185D37C270'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create an .exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\Whale.lnk" `
						     -TargetPath "$toolsDir\Whale.exe"
							 