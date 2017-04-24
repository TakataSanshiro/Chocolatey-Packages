$ErrorActionPreference = 'Stop';

$packageName = 'magicavoxelviewer'
$url = 'http://23.98.147.40/uploads/MagicaVoxel%20Viewer-win-mac.zip' 
$checksum = 'E484B5E968B0F7DBB8AE95FBF287D78B2B79C9A7E2E777E20438E3D364B9F52B'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create a folder shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\MagicaVoxelViewer.lnk" `
						     -TargetPath "$toolsDir\MagicaVoxel Viewer"
							 