$ErrorActionPreference = 'Stop';

$packageName= 'todoist'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = '{{DownloadUrl}}'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'

  softwareName  = 'Todoist'
}

Install-ChocolateyPackage @packageArgs
