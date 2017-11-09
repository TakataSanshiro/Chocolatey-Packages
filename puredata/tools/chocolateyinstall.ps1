$ErrorActionPreference = 'Stop';

$packageName = 'puredata'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://msp.ucsd.edu/Software/pd-0.48-0.windows-installer.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  silentArgs  = "/S"
  softwareName  = '*puredata*'
  checksum      = 'C1171D470A58B5C78765E1186ECF693BA73D42F13ADF6884387F5F067911FE2E'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs