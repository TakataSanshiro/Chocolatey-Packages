$ErrorActionPreference = 'Stop';

$packageName = 'signal'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://updates.signal.org/desktop/Signal-win-1.0.35.exe' 
$checksum = '2B7A21B51A831FC1F9D8F41B34EA9A698F1793A02AB424814652754F4BE5C446'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"