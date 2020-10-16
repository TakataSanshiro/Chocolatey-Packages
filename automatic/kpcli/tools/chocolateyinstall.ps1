$ErrorActionPreference = 'Stop';

$installFile  = join-path $toolsDir 'kpcli.exe'

$packageArgs = @{
  packageName    = 'kpcli'
  installerType  = 'exe'
  url            = 'https://sourceforge.net/projects/kpcli/files/kpcli-3.6.exe/download'
  checksum       = 'C1149CF72008FE398FE8379E15EACA6066CAD0C39CA0E5142262715E9E2F772B'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'kpcli'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}

Get-ChocolateyWebFile $packageName "$installFile" "$url" -checksum $checksum -checksumType $checksumType
