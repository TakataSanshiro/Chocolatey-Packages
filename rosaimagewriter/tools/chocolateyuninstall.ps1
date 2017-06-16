$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "rosaimagewriter" `
  -ZipFileName "RosaImageWriter*" 

Remove-item -path "$Home\Desktop\RosaImageWriter.lnk" -Force -ErrorAction 'SilentlyContinue'
