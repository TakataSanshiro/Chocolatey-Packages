$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "glyphr-studio-desktop" `
  -ZipFileName "Glyphr*" 

Remove-item -path "$Home\Desktop\Glyphr Studio Desktop.lnk" -Force -ErrorAction 'SilentlyContinue'