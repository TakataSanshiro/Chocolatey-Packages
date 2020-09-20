$ErrorActionPreference = 'Stop';

$installFile  = join-path $toolsDir 'kpcli.exe'

$packageArgs = @{
  packageName    = 'kpcli'
  installerType  = 'exe'
  url            = 'https://sourceforge.net/projects/kpcli/files/kpcli-3.4.exe/download'
  checksum       = '317C16E5ADA68B5FF017874B446D29D7751C565655B487D0330763F228059DC6'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'kpcli'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}

Get-ChocolateyWebFile $packageName "$installFile" "$url" -checksum $checksum -checksumType $checksumType
