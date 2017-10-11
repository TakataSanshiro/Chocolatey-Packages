$ErrorActionPreference = 'Stop';

$packageName = 'acunetix-free'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://s3.amazonaws.com/a280ccaaf904330a389db759e6275285/acunetix_manual_tools_setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  silentArgs  = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
  checksum      = '68FE10818C055DAEF06D6F6D65D554A20D9F15BCE7F4B956CC3EFBBE94F85EF2'
  checksumType  = 'sha256'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs