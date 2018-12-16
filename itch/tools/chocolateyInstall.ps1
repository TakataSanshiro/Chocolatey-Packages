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

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 38C9165573A1CFCE9F99CD4BC0AF48963B7DD8C3778CEF75394DEE3023491293 -ChecksumType sha256 -Options $options
