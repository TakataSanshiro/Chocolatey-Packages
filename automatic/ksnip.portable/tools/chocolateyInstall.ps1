$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/ksnip/ksnip/releases/download/v1.9.2/ksnip-1.9.2-windows.zip'
  checksum       = '2bfc83cd6b0960e14567d1b536ed82dc6443c609cd7bd19205505ed9584df43b'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
