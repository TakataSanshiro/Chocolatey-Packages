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
  checksum      = '3456B7EBC26AD8362BEF81313A96C32B5D90E12040B58BF9645FAE51CF41D210'
  checksumType  = 'sha256'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs