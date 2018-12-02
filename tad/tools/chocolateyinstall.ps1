$ErrorActionPreference = 'Stop';

$packageName = 'tad'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/antonycourtney/tad/releases/download/v0.9.0/Tad.Setup.0.9.0.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  silentArgs  = "/S"
  softwareName  = '*tad*'
  checksum      = '8F5C469FFACDAFE7CEDB23975C565C9D76D0B0CEC311B2E56CCD352C2734D02A'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs