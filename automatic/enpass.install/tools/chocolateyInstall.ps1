$ErrorActionPreference = 'Stop'

$packageName = 'Enpass'
$url         = 'https://dl.enpass.io/stable/windows/setup/6.8.5.1239/Enpass-setup.exe'
$checksum    = '28d0553dfc7363cedcf2195f3f7c769364a387746438aa66cd82f23f7ba78014'

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
