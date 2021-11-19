$ErrorActionPreference = 'Stop'

$packageName = 'Enpass'
$url         = 'https://dl.enpass.io/stable/windows/setup/6.7.4.933/Enpass-setup.exe'
$checksum    = '81fafb8823987a01c611beacf710b573283593cba173a088ebe8ee62cfb061f1'

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
