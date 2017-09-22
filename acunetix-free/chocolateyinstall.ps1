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
  checksum      = '3A1ECE3A38276D85414B208760AEF0CFAF664FFF542471DDAB5731E7338619E0'
  checksumType  = 'sha256'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs