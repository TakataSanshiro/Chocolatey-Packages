$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/whoisconnectedsniffer.zip'
  url64          = 'https://www.nirsoft.net/utils/whoisconnectedsniffer-x64.zip'
  checksum       = 'fe4cc8f7eb4f4190ec3608a4e5a0bfd289bd1f0d9784cf6803752df9119b7ee0'
  checksum64     = 'a69332cf6c01cae1379b13537057b99c5f6b3413c4bd427b49ce4fcad6b721e8'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'whoisconnectedsniffer.portable'
}
Install-ChocolateyZipPackage @packageArgs
