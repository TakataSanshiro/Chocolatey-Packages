$packageName = 'magicavoxel'
$url = 'http://23.98.147.40/uploads/MagicaVoxel-0.98.2-win.zip' 
$checksum = 'DCAE6CF245491E44D52A3F7D9688210331EC7231D932BC20DCC35B231AB1C143'
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
							 