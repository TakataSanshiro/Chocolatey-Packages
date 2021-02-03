$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'appaudioconfig'
  url            = 'https://www.nirsoft.net/utils/appaudioconfig.zip'
  url64          = 'https://www.nirsoft.net/utils/appaudioconfig-x64.zip'
  checksum       = '1daa4eb09500575356f12a689c2e08c4297cddb3e46a1247d892856946c042d6'
  checksum64     = '84c1aab29b5d480e58cee1232a159bc524867a477d5b5f149ddd5d6c16b5cf8a'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'AppAudioConfig*'
}
Install-ChocolateyZipPackage @packageArgs
