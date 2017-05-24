$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "socket-io-tester" `
  -ZipFileName "socket-io-tester*"

# Delete junk files of socket.io-tester at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Roaming\socket-io-tester -recurse
Remove-item -path "$Home\Desktop\socket.io-tester.exe.lnk" -Force -ErrorAction 'SilentlyContinue'
