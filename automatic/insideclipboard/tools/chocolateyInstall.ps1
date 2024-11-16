$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/insideclipboard.zip'
  checksum       = '12a98aaaa85d772afe655ac4bb1618d4224d64054d9eba313e6302a28ee33002'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'InsideClipboard'
}
Install-ChocolateyZipPackage @packageArgs
