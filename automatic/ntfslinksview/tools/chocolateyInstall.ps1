$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/ntfslinksview.zip'
  url64          = 'https://www.nirsoft.net/utils/ntfslinksview-x64.zip'
  checksum       = '135ff2daa3424044f836794c059da6c7272efe42ad4dee49409d037e32de0388'
  checksum64     = 'd3184683dc1116a38bb4c632d1883e48850883b1300c2144c96eedca48679aad'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NTFSLinksView'
}
Install-ChocolateyZipPackage @packageArgs
