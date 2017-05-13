$ErrorActionPreference = 'Stop';

$packageName = 'brave-browser'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/brave/browser-laptop/releases/download/v0.15.2dev/BraveSetup-ia32.exe'
$url64 = 'https://github.com/brave/browser-laptop/releases/download/v0.15.2dev/BraveSetup-x64.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum C5D06F073E05EA89995C3BAD47BD1E421B53577A264BA47B934E6264F55B795F -ChecksumType sha256 -checksum64 CB45E42EAEB70442EF28237FAE39AE1CF09CC8FA403986746226E69C9B89E227 -checksumtype64 sha256
