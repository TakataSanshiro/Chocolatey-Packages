$ErrorActionPreference = 'Stop';

$packageName = 'wowcrypt'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/XeonPowder/WoWCrypt/releases/download/v0.0.4/WoW.Crypt.Setup.0.0.4.exe'
$checksum = 'FB525D6BD2C370714D9AB5926DE0F170D87D4BE84D456F98BB7ADA08C4F3B8DE'
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
