$ErrorActionPreference = 'Stop'

$packageName = 'Enpass'
$url         = 'https://dl.enpass.io/stable/windows/setup/6.8.6.1365/Enpass-setup.exe'
$checksum    = '90cebc97c2523fe42b96d3e3fb838795505254de8040e434163887421230ed9a'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = $url
  silentArgs             = '/quiet /norestart'
  checksum               = $checksum
  checksumType           = 'sha256'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}
Install-ChocolateyPackage @packageArgs
