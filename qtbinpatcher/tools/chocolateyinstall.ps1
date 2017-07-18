$ErrorActionPreference = 'Stop';

$packageName= 'qtbinpatcher'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = '{{DownloadUrl}}'
$url64      = '{{DownloadUrlx64}}'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
}

Install-ChocolateyZipPackage @packageArgs
