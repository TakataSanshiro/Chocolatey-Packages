$ErrorActionPreference = 'Stop';

$packageName = 'actiona.install'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://jmgr.net/download/128/actiona-3.9.4-windows-32bit.exe'
$checksum = '05C7F24DC3851980DD9B3CDC31872FE8BEB91857EBFF4648297F19E3B750F8D6'
$checksumType = 'sha256'
$url64 = 'https://jmgr.net/download/129/actiona-3.9.4-windows-64bit.exe'
$checksum64 = '5C64E8CD847D495FDFC6A79743660F20EA07434DFCC6AAA9909155ECDC9F88F5'
$checksumType64 = 'sha256'
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
