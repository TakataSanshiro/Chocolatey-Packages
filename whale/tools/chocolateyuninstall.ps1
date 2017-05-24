$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "whale" `
  -ZipFileName "Whale-windows*" 

Remove-item -path "$Home\Desktop\Whale.lnk" -Force -ErrorAction 'SilentlyContinue'
