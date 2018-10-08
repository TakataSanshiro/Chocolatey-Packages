$ErrorActionPreference = 'Stop';

$packageName = 'wire'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/wireapp/wire-desktop/releases/download/release%2F3.3.2868/wire-3.3.2868.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum F9325289FC43638260C9A284BDFDB2137E659E31D2F57396DBD7D0282E39F232 -ChecksumType sha256
