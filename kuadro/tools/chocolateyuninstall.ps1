$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "kuadro" `
  -ZipFileName "kuadro*" 

Remove-item -path "$Home\Desktop\kuadro.lnk" -Force -ErrorAction 'SilentlyContinue'
