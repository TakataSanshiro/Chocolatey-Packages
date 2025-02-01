$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/videocacheview.zip'
  url64          = 'https://www.nirsoft.net/utils/videocacheview-x64.zip'
  checksum       = 'c62bb5338b7dce2b84df62a0847b8922ddf3bc0384a2bbce483a86c04c49ccf7'
  checksum64     = '5441ee47081c0d91a2bdc4781b54e0d896fa093b443a065255e2c47f4c1ef446'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'videocacheview.portable'
}
Install-ChocolateyZipPackage @packageArgs
