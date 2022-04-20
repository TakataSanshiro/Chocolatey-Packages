$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/antonycourtney/tad/releases/download/v0.10.0/Tad.Setup.0.10.0.exe'
  silentArgs     = "/S"
  checksum       = '35B29728A484C909721D7F9B5DF3EC080FC29FF2AEA7B010A9F38987A820D9A7'
  checksumType   = 'sha256'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'tad*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
