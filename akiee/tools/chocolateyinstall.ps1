$ErrorActionPreference = 'Stop';

$packageName = 'akiee'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/rockiger/akiee-release/raw/win32-release/dist/akiee%20Setup%200.0.4-ia32.exe'
$checksum = '195544EF618A3846BECD561C2EA8F0C30B57106BF53C6CBB7EC6542EEEF710C0'
$checksumType = 'sha256'
$url64 = 'https://github.com/rockiger/akiee-release/raw/win-release/dist/akiee%20Setup%200.0.4.exe'
$checksum64 = '9030A615A38D6B6BD0F0D62DF01D25E94CAD932302CB5CFDF3E74D0EC5E5E895'
$checksumType64 = 'sha256'
$silentArgs = '/S'
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
