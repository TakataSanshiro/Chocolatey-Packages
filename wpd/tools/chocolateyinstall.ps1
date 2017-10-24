$ErrorActionPreference = 'Stop';

$packageName = 'wpd'
$url = 'https://getwpd.com/get/latest.zip' 
$checksum = '589C22F7CC96EBD649AA239C05B3FEBC2D22CE16C60D965F250F9C8D16623A87'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create an exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\WPD.lnk" `
						     -TargetPath "$toolsDir\WPD.exe"