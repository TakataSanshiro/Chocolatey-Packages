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
  checksum      = 'E362ACA815232C2ABA26B621E858D44F6D1A957B7DFFB6603D12D9BDAFE8670B'
  checksumType  = 'sha256'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs