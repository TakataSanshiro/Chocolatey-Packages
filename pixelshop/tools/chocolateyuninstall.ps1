$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "pixelshop" `
  -ZipFileName "PixelShop.zip" 

Remove-item -path "$Home\Desktop\PixelShop.lnk" -Force -ErrorAction 'SilentlyContinue'
