$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://github.com/zulip/zulip-desktop/releases/download/v5.12.0/Zulip-Web-Setup-5.12.0.exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  checksum       = '11a18291541731bf0a06a96984c2079cdb4d365a4eebcf76a677cb3bafdd205f'
  checksumType   = 'sha256'
  softwareName   = 'Zulip*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs

Start-Sleep -Seconds 60
