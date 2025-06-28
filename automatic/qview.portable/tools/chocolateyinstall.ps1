$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/jurplel/qView/releases/download/7.0/qView-7.0-win32.zip'
  url64          = 'https://github.com/jurplel/qView/releases/download/7.0/qView-7.0-win64.zip'
  checksum       = '6db8c308c9962109f9bf049cd91fcb19ad6ecaf2aee6f4f197254180ab64902d'
  checksum64     = '1a2897a54a9798ecdc8b1497d4862e3c09734ec2f2f44a333abee626371867ce'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
