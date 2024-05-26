$ErrorActionPreference = 'Stop';

$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installFile  = join-path $toolsDir 'kpcli.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://sourceforge.net/projects/kpcli/files/kpcli-4.1.exe/download'
  checksum       = '55D0178FD484A4FB7F33CB195559F0F619CCFD6BD03E229ED4409DA5BE31E2E9'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'kpcli'
  fileFullPath   = "$installFile"
}
Get-ChocolateyWebFile @packageArgs
