$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.9.1/tagspaces-win-x64-5.9.1.zip'
  checksum       = '1e7cb2ca6d7f6671c5258911e40e529a809203a638c6d58aaa8c120be397ac97'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
