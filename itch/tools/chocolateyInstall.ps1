$packageName = 'itch' 
$installerType = 'exe' 
$url = 'http://nuts.itch.zone/download/windows' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 0E1635478936954F75873546798773D109D35D21F30C56EEF66467D60EAFB538 -ChecksumType sha256


