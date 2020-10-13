$ErrorActionPreference = 'Stop'

$packageName = 'Enpass'
$url         = 'https://dl.enpass.io/stable/windows/setup/6.5.2.725/Enpass-setup.exe'
$checksum    = 'd556420a0ea0736983d290fefd2e20c6022f591a74d961953cde37898761fde8'

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
