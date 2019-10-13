$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v3.2.5/tagspaces-win-x64-3.2.5.zip'
  checksum       = '5a00dd2c098eae10fdfa8c1e7ef295b80a559bb1ea87df6ec183523c14ab0932'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
