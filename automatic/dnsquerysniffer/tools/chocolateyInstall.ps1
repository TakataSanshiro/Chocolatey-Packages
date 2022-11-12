$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/dnsquerysniffer.zip'
  url64          = 'https://www.nirsoft.net/utils/dnsquerysniffer-x64.zip'
  checksum       = 'adb34d147b249ae7130b9a11c640ec2ce7058fd6f67731e45e2171dcc79c5afd'
  checksum64     = 'a07df8fd2d2a108cd25d4f4449e7d3d5b69f832365a424fc406f17b13243835b'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'dnsquerysniffer.portable'
}
Install-ChocolateyZipPackage @packageArgs
