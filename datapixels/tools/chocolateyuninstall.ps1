$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "datapixels" `
  -ZipFileName "data-pixels*" 

Remove-item -path "$Home\Desktop\Data Pixels Playground.lnk" -Force -ErrorAction 'SilentlyContinue'