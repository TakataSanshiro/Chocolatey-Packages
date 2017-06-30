$ErrorActionPreference = 'Stop';

$packageName = 'elements'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/FlorianFe/Elements/releases/download/v1.1.1/Elements.exe'
$checksum = '0250D52B4FEACDED8712F2BF86976F0D388A3B5A32BAB7933FA4A354500FA542'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -ValidExitCodes "$validExitCodes"
