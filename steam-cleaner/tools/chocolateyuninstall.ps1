$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "steam-cleaner" `
  -ZipFileName "SteamCleaner*" 

Remove-item -path "$Home\Desktop\Steam Cleaner.lnk" -Force -ErrorAction 'SilentlyContinue'