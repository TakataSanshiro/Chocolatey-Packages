$ErrorActionPreference = 'Stop';

$packageName = 'drmemory.install'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/DynamoRIO/drmemory/releases/download/release_1.11.0/DrMemory-Windows-1.11.0-2.msi'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'msi'
  url           = $url
  silentArgs  = "/qn"
  softwareName  = 'drmemory*'
  checksum      = '4A611745335CBB92A11238F7745DA3F4C484F9CFE541D6AC01B98F5C78CBAD1C'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs