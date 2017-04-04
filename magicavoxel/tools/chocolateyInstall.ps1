$packageName = 'magicavoxel'
$url = 'http://23.98.147.40/uploads/MagicaVoxel-0.98.2-win.zip' 
$checksum = '2CF99BFB0BD0BBE2B026BB4D7563C30A78E82AFC592AFDDDF802F06C3F1DCB5C'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create a folder shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\MagicaVoxel.lnk" `
						     -TargetPath "C:\ProgramData\chocolatey\lib\magicavoxel\tools\MagicaVoxel-0.98.2-win"
							 