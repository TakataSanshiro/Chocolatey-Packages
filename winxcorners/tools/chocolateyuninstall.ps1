$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "winxcorners" `
  -ZipFileName "WinXCorners*" 

Remove-item -path "$Home\Desktop\WinXcorners.lnk" -Force -ErrorAction 'SilentlyContinue'