$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/builtbybel/privatezilla/releases/download/0.60.0/privatezilla.zip'
  checksum       = '541139164555109babee6d7349034c4722684fd4a7cd9050d82709a351a4f432'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
