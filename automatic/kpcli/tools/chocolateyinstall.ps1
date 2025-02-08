$ErrorActionPreference = 'Stop';

$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installFile  = join-path $toolsDir 'kpcli.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://sourceforge.net/projects/kpcli/files/kpcli-4.1.3.exe/download'
  checksum       = 'D7F9314847622EAC681041B76C3701373917C84A1568844F8A7A127DDD2D93D7'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'kpcli'
  fileFullPath   = "$installFile"
}
Get-ChocolateyWebFile @packageArgs
