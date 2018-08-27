$ErrorActionPreference = 'Stop';

$packageName = 'portexpert'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://kcsoftwares.com/files/portexpert_lite.exe'
$checksum = 'DA13CDF69BF7E81DF8B18C65D3CF6C10BD86933E08FF93104C00F498959CA150'
$checksumType = 'sha256'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -Url64bit "$url64" `
  -Checksum64 "$checksum64" `
  -ChecksumType64 "$checksumType64" `
  -ValidExitCodes "$validExitCodes"
