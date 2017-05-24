$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "laverna" `
  -ZipFileName "laverna*" 

Remove-item -path "$Home\Desktop\laverna.lnk" -Force -ErrorAction 'SilentlyContinue'
Remove-Item $Env:USERPROFILE\AppData\Roaming\laverna -recurse
