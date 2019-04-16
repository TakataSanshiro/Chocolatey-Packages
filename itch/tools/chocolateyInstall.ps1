$ErrorActionPreference = 'Stop';

$packageName    = 'itch' 
$installerType  = 'exe' 
$url            = 'https://nuts.itch.zone/download/windows' 
$silentArgs     = '' 
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$validExitCodes = @(0) 
$options = @{
  Headers = @{
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
    'Accept-Charset' = 'ISO-8859-1,utf-8;q=0.7,*;q=0.3';
    'Accept-Language' = 'en-US,en;q=0.5';
    Referer = 'https://itch.io/app';
  }
}
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "itchInstall.ahk"

Start-Process $ahkExe $ahkFile

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum D251D2A658CF6EF6FE82203578F685F0D635B07F577C598D661DC331B5DB8E0B -ChecksumType sha256 -Options $options
