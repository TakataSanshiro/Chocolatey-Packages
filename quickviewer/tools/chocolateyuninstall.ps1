$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "quickviewer" `
  -ZipFileName "QuickViewer*.zip" 

Remove-item -path "$Home\Desktop\QuickViewer.lnk" -Force -ErrorAction 'SilentlyContinue'
