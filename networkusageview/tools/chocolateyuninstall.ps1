$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "networkusageview" `
  -ZipFileName "networkusageview*.zip" 

Remove-item -path "$Home\Desktop\NetworkUsageView.lnk" -Force -ErrorAction 'SilentlyContinue'
