$ErrorActionPreference = 'Stop';

$installFile  = join-path $toolsDir 'kpcli.exe'

$packageArgs = @{
  packageName    = 'kpcli'
  installerType  = 'exe'
  url            = 'https://sourceforge.net/projects/kpcli/files/kpcli-3.5.exe/download'
  checksum       = '90A97A7A4717FB6C05EE5AA884CC70089D0BCE92E07C7FC1FFF4894D3526B379'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'kpcli'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}

Get-ChocolateyWebFile $packageName "$installFile" "$url" -checksum $checksum -checksumType $checksumType
