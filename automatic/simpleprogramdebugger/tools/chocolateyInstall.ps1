$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/simpleprogramdebugger.zip'
  url64          = 'https://www.nirsoft.net/utils/simpleprogramdebugger-x64.zip'
  checksum       = '5a48545644897c3344912c6e2f52768a5538439b354829096c5c61b2ee09460d'
  checksum64     = '0487e3e2a8af213fdaf0202d8fb7dbdf6776f703e6b70e43f2f311694c7aa91b'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'SimpleProgramDebugger'
}
Install-ChocolateyZipPackage @packageArgs
