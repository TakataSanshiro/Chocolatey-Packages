$ErrorActionPreference = 'Stop';

$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installFile  = join-path $toolsDir 'kpcli.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://sourceforge.net/projects/kpcli/files/kpcli-3.7.exe/download'
  url64          = 'https://sourceforge.net/projects/kpcli/files/kpcli-3.7.exe/download'
  checksum       = '2BDCFA0C4EA789697544C7F20D226C854ABC49FC3E1EE99C4D84BB013C3C719D'
  checksum64     = '2BDCFA0C4EA789697544C7F20D226C854ABC49FC3E1EE99C4D84BB013C3C719D'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'kpcli'
  fileFullPath   = "$installFile"
}
Get-ChocolateyWebFile @packageArgs
# not specified 64 then this error - CPU is 64 bit. ERROR: This package does not support architecture.
