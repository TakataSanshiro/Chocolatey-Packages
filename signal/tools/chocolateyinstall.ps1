$ErrorActionPreference = 'Stop';

$packageName = 'signal'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://updates.signal.org/desktop/Signal-win-1.0.36.exe' 
$checksum = '4889DAAA3EB92EB248DE7708C5F21A3BFC771089314078B8C47F619F2C830F5B'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"