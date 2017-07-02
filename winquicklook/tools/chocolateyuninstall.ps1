$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "winquicklook" `
  -ZipFileName "WinQuickLook*" 

Remove-item -path "$Home\Desktop\WinQuickLook.lnk" -Force -ErrorAction 'SilentlyContinue'