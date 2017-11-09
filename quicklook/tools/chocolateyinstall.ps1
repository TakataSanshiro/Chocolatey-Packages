$ErrorActionPreference = 'Stop';

$packageName = 'quicklook'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/xupefei/QuickLook/releases/download/0.3.2.1/QuickLook-0.3.2.1.msi'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'msi'
  url           = $url
  silentArgs  = "/qn"
  softwareName  = '*quicklook*'
  checksum      = '52778D18D7A2441F102E7EEDE23054E5E8278A1136539CEB42966BBF078C3DAA'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs