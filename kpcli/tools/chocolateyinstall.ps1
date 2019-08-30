$ErrorActionPreference = 'Stop';

$packageName  = 'kpcli'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile  = join-path $toolsDir 'kpcli.exe'
$url          = 'https://sourceforge.net/projects/kpcli/files/kpcli-3.3.exe/download'
$checksum     = '7E80B47E5CE111B949849D900E4137AC29C3FF094956778609D0A6527365CC22'
$checksumType = 'sha256'

Get-ChocolateyWebFile $packageName "$installFile" "$url" -checksum $checksum -checksumType $checksumType
