$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "laverna" `
  -ZipFileName "laverna*"