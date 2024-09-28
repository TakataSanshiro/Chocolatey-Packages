$ErrorActionPreference = 'Stop';

$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installFile  = join-path $toolsDir 'kpcli.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://sourceforge.net/projects/kpcli/files/kpcli-4.1.2.exe/download'
  checksum       = 'B99ACEF668285C629C54B7D0828296F67656C07829BC6F5806BC5DBF68CBA9A1'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'kpcli'
  fileFullPath   = "$installFile"
}
Get-ChocolateyWebFile @packageArgs
