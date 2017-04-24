$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "magicavoxel" `
  -ZipFileName "MagicaVoxel-0.98.2-win.zip" 

Remove-item -path "$Home\Desktop\MagicaVoxel.lnk" -Force -ErrorAction 'SilentlyContinue'
