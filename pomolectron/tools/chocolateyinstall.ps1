$ErrorActionPreference = 'Stop';

$packageName = 'pomolectron'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/amitmerchant1990/pomolectron/releases/download/v1.1.0/Pomolectron-1.1.0.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum D12BA816C017FDE8EED6E8F7C65C29CC99B8B1A420365F5D591D104B99472A42 -ChecksumType sha256
