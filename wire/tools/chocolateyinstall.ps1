$ErrorActionPreference = 'Stop';

$packageName = 'wire'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/wireapp/wire-desktop/releases/download/windows%2F3.6.2908/WireSetup.3.6.2908.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 0A08C6B03935FC52D267D769B400C44DEA5EBAFDBE103FB01D999597C7A8A619 -ChecksumType sha256
