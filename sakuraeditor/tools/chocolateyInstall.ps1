$packageName = 'sakuraeditor'
$installerType = 'exe'
$url = 'https://downloads.sourceforge.net/project/sakura-editor/sakura2-installer/2.2.0.1/sakura_install2-2-0-1.exe?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fsakura-editor%2F&ts=1492018402&use_mirror=superb-sea2' 
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum C5950B0ACAFA906200E1EDDC4E43072BBD1F04457B395287BB0135202504994B -ChecksumType sha256
