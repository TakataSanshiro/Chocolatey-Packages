$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "clibor" `
  -ZipFileName "clibor*.zip" 

Remove-item -path "$Home\Desktop\Clibor.lnk" -Force -ErrorAction 'SilentlyContinue'
