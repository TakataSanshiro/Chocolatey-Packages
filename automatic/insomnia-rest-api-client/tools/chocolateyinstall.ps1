$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/getinsomnia/insomnia/releases/download/v6.5.4/Insomnia.Setup.6.5.4.exe'
  checksum      = 'a41f606b5a1731ef6c50fb3aa0aba8b729726592c9abccdf98ea05b98b07f6fa'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
