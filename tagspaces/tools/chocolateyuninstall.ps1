$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "tagspaces" `
  -ZipFileName "tagspaces*" 

Remove-item -path "$Home\Desktop\tagspaces.lnk" -Force -ErrorAction 'SilentlyContinue'
Remove-Item $Env:USERPROFILE\AppData\Roaming\tagspaces -recurse
