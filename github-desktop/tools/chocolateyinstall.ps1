$ErrorActionPreference = 'Stop';

$packageName = 'github-desktop'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://desktop.githubusercontent.com/releases/1.2.6-908a2695/GitHubDesktopSetup.exe'
$checksum = '9234FE613876F42E259AB821022044B938E0DC8B451FDD4B3E5F374A1F24FFF6'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -ValidExitCodes "$validExitCodes"
