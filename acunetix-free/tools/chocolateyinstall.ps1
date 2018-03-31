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
  checksum      = '5AA83682C05AA9A5F2C658841FA3091319DB9E41FA97E031C095655A468C3842'
  checksumType  = 'sha256'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs