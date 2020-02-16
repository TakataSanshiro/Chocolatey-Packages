$ErrorActionPreference = 'Stop';

$packageName= 'todoist'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://d2092e1xll5m4f.cloudfront.net/Todoist_for_Windows_Desktop_2_7_6.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  softwareName  = 'Todoist'
  checksum      = 'E207E8ABFE3D134E8BD3BE448A50CB02E7B091CFAFC0AB68E254D478684DF1F8'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
