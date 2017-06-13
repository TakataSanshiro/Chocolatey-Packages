$ErrorActionPreference = 'Stop';

$packageName = 'fileassassin'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://downloads.malwarebytes.com/file/fileassassin/'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  silentArgs  = "/S"
  softwareName  = '*fileassassin*'
  checksum      = '829D12A736B29D03699F840616B0A8B658CD4CB29D6F3AEDAB53B065293FE05D'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs