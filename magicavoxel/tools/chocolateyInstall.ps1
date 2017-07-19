$ErrorActionPreference = 'Stop';

$packageName = 'magicavoxel'
$url = 'http://192.241.207.218/uploads/MagicaVoxel-0.98.2-win.zip' 
$checksum = '89315119A4C4BA0553C358F83474916DE044C03DF03778A8A6D90CF990D15CE7'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create a folder shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\MagicaVoxel.lnk" `
						     -TargetPath "$toolsDir\MagicaVoxel-0.98.2-win"
							 