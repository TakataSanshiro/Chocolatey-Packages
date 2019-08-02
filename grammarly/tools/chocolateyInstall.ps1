$ErrorActionPreference = 'Stop';

$packageName    = 'grammarly'
$installerType  = 'exe'
$url            = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe'
$silentArgs     = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum D1102ED7EDB4E6396977F2804AB4EEDFE28DDA492D1C6A170E3F2494BE1B8F23 -ChecksumType sha256
