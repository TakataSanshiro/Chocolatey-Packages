$ErrorActionPreference = 'Stop';

$packageName = 'pixie'
$url = 'http://www.nattyware.com/bin/pixie.zip' 
$checksum = '140DE93744FB05E307D840C07E84F1C22759EEE8360BCAB2122D02A41FAEA0B7'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create an execution shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\Pixie.lnk" `
						     -TargetPath "$toolsDir\pixie.exe"
							 