$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = 'jhead'
  url            = 'http://www.sentex.net/~mwandel/jhead/jhead.exe'
  checksum       = '47d819ae4785dd89d8f6739a3de0f20448e148a12394c83c9abf78c07d279850'
  checksumType   = 'sha256'
  validExitCodes = @(0, 3010, 1641)
  fileFullPath   = "$toolsDir\jhead.exe"
}
Get-ChocolateyWebFile @packageArgs
