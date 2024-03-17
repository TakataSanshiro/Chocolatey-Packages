$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://github.com/zulip/zulip-desktop/releases/download/v5.10.5/Zulip-Web-Setup-5.10.5.exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  checksum       = 'fbefaa39de016430c49e86bfa8df73d4710a6bc3299fbb646c8dbd710d9eb02a'
  checksumType   = 'sha256'
  softwareName   = 'Zulip*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs

Start-Sleep -Seconds 60
