$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/videocacheview.zip'
  url64          = 'https://www.nirsoft.net/utils/videocacheview-x64.zip'
  checksum       = 'b615b4af1b40dea7b8304d52d17bbef208d1a056677b430beee7fb0db0371d65'
  checksum64     = '287ec9b56baee231d1451ec4b5758c7ab17ab5de214b63ac8d77a5f148f081e9'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'videocacheview.portable'
}
Install-ChocolateyZipPackage @packageArgs
