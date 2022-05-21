$ErrorActionPreference = 'Stop';

$installFile  = join-path $toolsDir 'kpcli.exe'

$packageArgs = @{
  packageName    = 'kpcli'
  installerType  = 'exe'
  url            = 'https://sourceforge.net/projects/kpcli/files/kpcli-3.7.exe/download'
  checksum       = '2BDCFA0C4EA789697544C7F20D226C854ABC49FC3E1EE99C4D84BB013C3C719D'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'kpcli'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}

Get-ChocolateyWebFile $packageName "$installFile" "$url" -checksum $checksum -checksumType $checksumType
