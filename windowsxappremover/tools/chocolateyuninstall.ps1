$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "windowsxappremover" `
  -ZipFileName "winxar_102.zip" 

Remove-item -path "$Home\Desktop\WindowsXAppRemover.lnk" -Force -ErrorAction 'SilentlyContinue'
