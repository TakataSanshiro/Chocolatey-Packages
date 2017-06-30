$ErrorActionPreference = 'Stop';

$packageName = 'datapixels'
$url = 'https://github.com/gmattie/Data-Pixels/releases/download/1.0.0/data-pixels-playground-win-x64.zip' 
$checksum = '0A8C0BDCFF5BFBE3731ADBC129F9FF230067156539AB3F6BBAEAF3D25671ED71'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create an exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\Data Pixels Playground.lnk" `
						     -TargetPath "$toolsDir\Data Pixels Playground\Data Pixels Playground.exe"