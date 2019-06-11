$ErrorActionPreference = 'Stop';

$packageName  = 'kpcli'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile  = join-path $toolsDir 'kpcli.exe'
$url          = 'https://sourceforge.net/projects/kpcli/files/kpcli-3.2.exe/download'
$checksum     = '84732CE0F058B9E02DD72A28AD2F3E8A885B267B63F9D8C6AD83AF35531EDF17'
$checksumType = 'sha256'

Get-ChocolateyWebFile $packageName "$installFile" "$url" -checksum $checksum -checksumType $checksumType
