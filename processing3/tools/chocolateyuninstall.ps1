$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "processing3" `
  -ZipFileName "processing*" 

Remove-item -path "$Home\Desktop\Processing3.lnk" -Force -ErrorAction 'SilentlyContinue'
