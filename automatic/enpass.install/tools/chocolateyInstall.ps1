$ErrorActionPreference = 'Stop'

$packageName = 'Enpass'
$url         = 'https://dl.enpass.io/stable/windows/setup/6.8.3.1155/Enpass-setup.exe'
$checksum    = 'e9a84804120e11974060abd80234fcf4e0e7a47f4084fe80efc2592f3ce958b6'

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
