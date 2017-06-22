$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "snips" `
  -ZipFileName "snips*" 

Remove-item -path "$Home\Desktop\Snips.lnk" -Force -ErrorAction 'SilentlyContinue'