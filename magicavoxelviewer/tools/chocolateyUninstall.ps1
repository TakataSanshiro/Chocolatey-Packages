Uninstall-ChocolateyZipPackage `
  -PackageName "magicavoxelviewer" `
  -ZipFileName "MagicaVoxel%20Viewer-win-mac.zip" 

Remove-item -path "$Home\Desktop\MagicaVoxelViewer.lnk" -Force -ErrorAction 'SilentlyContinue'
