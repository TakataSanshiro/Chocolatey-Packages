$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "mupdf" `
  -ZipFileName "mupdf-1.11-windows.zip" 

Remove-item -path "$Home\Desktop\MuPDF.lnk" -Force -ErrorAction 'SilentlyContinue'
