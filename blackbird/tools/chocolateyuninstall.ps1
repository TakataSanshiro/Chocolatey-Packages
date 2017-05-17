$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "blackbird" `
  -ZipFileName "BlackbirdV6_*" 

Remove-item -path "$Home\Desktop\blackbird.lnk" -Force -ErrorAction 'SilentlyContinue'
