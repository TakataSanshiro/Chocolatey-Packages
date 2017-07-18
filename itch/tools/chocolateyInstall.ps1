$ErrorActionPreference = 'Stop';

$packageName = 'itch' 
$installerType = 'exe' 
$url = 'https://github.com/itchio/itch/releases/download/v23.4.2/itchSetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum DE75B0D17FF2BF8593846309460D946BADB7B7DF56E02BF15CC8A4F3F401B3C2 -ChecksumType sha256
