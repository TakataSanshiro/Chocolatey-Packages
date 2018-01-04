$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "networkusageview" `
  -ZipFileName "networkusageview*.zip" 