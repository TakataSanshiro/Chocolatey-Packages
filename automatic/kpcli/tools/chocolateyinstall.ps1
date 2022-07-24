$ErrorActionPreference = 'Stop';

$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installFile  = join-path $toolsDir 'kpcli.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://sourceforge.net/projects/kpcli/files/kpcli-3.8.1.exe/download'
  url64          = 'https://sourceforge.net/projects/kpcli/files/kpcli-3.8.1.exe/download'
  checksum       = 'BADDD92143319E2C3A17541FAE2AA1F6050E95D0CC7308012D00364582042DFD'
  checksum64     = 'BADDD92143319E2C3A17541FAE2AA1F6050E95D0CC7308012D00364582042DFD'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'kpcli'
  fileFullPath   = "$installFile"
}
Get-ChocolateyWebFile @packageArgs
# not specified 64 then this error - CPU is 64 bit. ERROR: This package does not support architecture.
