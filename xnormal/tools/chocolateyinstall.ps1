$ErrorActionPreference = 'Stop';

$packageName = 'xnormal'
$installerType = 'exe'
$url = 'http://www.xnormal.net/archives/xNormal-3.19.3c-installer.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum CAF95AB589554E38A774E4733A086EC241CEE3931C1A26318DF9EAA32B2A7F82 -ChecksumType sha256
