$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "crowdinspect" `
  -ZipFileName "CrowdInspect*" 

Remove-item -path "$Home\Desktop\CrowdInspect.lnk" -Force -ErrorAction 'SilentlyContinue'
Remove-item -path "$Home\Desktop\CrowdInspect64.exe" -Force -ErrorAction 'SilentlyContinue'