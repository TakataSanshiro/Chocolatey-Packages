$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/winupdatesview.zip'
  url64          = 'https://www.nirsoft.net/utils/winupdatesview-x64.zip'
  checksum       = '6aed91d1818adf89d6e884905c8289b388974b7b544fb610a6102b954a174ff8'
  checksum64     = 'f84be907709781100848e13fb781526b99c2a7b345866df8ed355bca45ff50df'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'WinUpdatesView'
}
Install-ChocolateyZipPackage @packageArgs
