$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "wpd" `
  -ZipFileName "WPD*" 

Remove-item -path "$Home\Desktop\WPD.lnk" -Force -ErrorAction 'SilentlyContinue'