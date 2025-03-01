$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v6.3.2/tagspaces-win-x64-6.3.2.zip'
  checksum       = '2347e7abccd3cdd7a4a85ab73b41ba30ff71cdca770c345e6a3ef422977e71e1'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
