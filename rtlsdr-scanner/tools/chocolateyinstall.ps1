$ErrorActionPreference = 'Stop';

$packageName = 'rtlsdr-scanner'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/EarToEarOak/RTLSDR-Scanner/releases/download/v1.3.0/rtlsdr_scanner-setup-win32.exe'
$checksum = 'D1BF8872A5018E0A633A5CDCA6CF3A6F36AE9E9FFC3682DAE60162B6F24A3614'
$checksumType = 'sha256'
$url64 = 'https://github.com/EarToEarOak/RTLSDR-Scanner/releases/download/v1.3.0/rtlsdr_scan-windows-64bit.exe'
$checksum64 = '98ED754C049BECDB1C2ABF676FC9FB99B0E3ADC96CB19991E8413BE000F93A00'
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
