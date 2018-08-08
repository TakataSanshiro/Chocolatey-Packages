$ErrorActionPreference = 'Stop';

$packageName = 'treeline'
$installerType = 'exe'
$url = 'https://cfhcable.dl.sourceforge.net/project/treeline/2.0.2/treeline-2.0.2-install-all.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum 842267EB5645C8D289693CCF8542ECFF3F7899F7B59CAE4A695C1001344BB315 -ChecksumType sha256
