$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/dnsquerysniffer.zip'
  url64          = 'https://www.nirsoft.net/utils/dnsquerysniffer-x64.zip'
  checksum       = '0c5dfafb38fdbeba3323d92c421839fdbdb40dd54cb3a687323009979ecf9970'
  checksum64     = 'c6c7231e59c3adc77fc24900778ba1c824e4737e9e7e26f530e9d7ca953be962'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'dnsquerysniffer.portable'
}
Install-ChocolateyZipPackage @packageArgs
