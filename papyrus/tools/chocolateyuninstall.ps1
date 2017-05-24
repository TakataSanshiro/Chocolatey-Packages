Uninstall-ChocolateyZipPackage `
  -PackageName "papyrus" `
  -ZipFileName "Papyrus-windows*" 

Remove-item -path "$Home\Desktop\Papyrus.lnk" -Force -ErrorAction 'SilentlyContinue'
Remove-Item $Env:USERPROFILE\AppData\Roaming\Papyrus -recurse
