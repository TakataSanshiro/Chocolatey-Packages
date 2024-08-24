$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://github.com/zulip/zulip-desktop/releases/download/v5.11.1/Zulip-Web-Setup-5.11.1.exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  checksum       = 'cb3113ebcc2dd487f431dcb38c8a83611d9248468789ed0eefb27d9326b50b69'
  checksumType   = 'sha256'
  softwareName   = 'Zulip*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs

Start-Sleep -Seconds 60
