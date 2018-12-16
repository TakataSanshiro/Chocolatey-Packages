$ErrorActionPreference = 'Stop';

$packageName = 'brave'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://laptop-updates.brave.com/latest/winia32'
$checksum = '217C9CA3AA78B854A4E9CE91E177E6F20214BAEF514BA3A5D0B991E0206883FE'
$checksumType = 'sha256'
$url64 = 'https://laptop-updates.brave.com/latest/winx64'
$checksum64 = 'E272E22B7E0D0214E9689A96C2A97F200475C158F6E43FAB9D470D07F46B22FB'
$checksumType64 = 'sha256'
$silentArgs = ''
$validExitCodes = @(0) 

$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "braveInstall.ahk"
Start-Process $ahkExe $ahkFile

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
