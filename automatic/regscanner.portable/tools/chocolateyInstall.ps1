$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/regscanner.zip'
  url64          = 'https://www.nirsoft.net/utils/regscanner-x64.zip'
  checksum       = '4bb2b038e4b83a4fdedb463f2684acac556332af9bdd3d112ac09c7df800019b'
  checksum64     = '40d9f84b045c6ce33cb32ca0b6fbcf37bd3b303774160a5beae04333998a9229'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'regscanner.portable'
}
Install-ChocolateyZipPackage @packageArgs
