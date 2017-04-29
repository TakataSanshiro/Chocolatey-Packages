$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "pixie" `
  -ZipFileName "pixie.zip" 

Remove-item -path "$Home\Desktop\Pixie.lnk" -Force -ErrorAction 'SilentlyContinue'
