$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'dnspy'
  url            = 'https://github.com/0xd4d/dnSpy/releases/download/v6.1.4/dnSpy-net472.zip'
  checksum       = 'c2181bb8959b7f7b7219ed1ed50eb97e4ff3182cff0c19a69f1389e4cbc98895'
  checksumType   = 'sha256'
  softwareName   = 'dnSpy'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
