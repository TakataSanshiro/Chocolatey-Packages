$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://github.com/zulip/zulip-desktop/releases/download/v5.11.0/Zulip-Web-Setup-5.11.0.exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  checksum       = '854a8eef2498c113c4edf1b9e62e59b4f2f77d501ab98f4fe094cb7ab4a867e8'
  checksumType   = 'sha256'
  softwareName   = 'Zulip*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs

Start-Sleep -Seconds 60
