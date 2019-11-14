$ErrorActionPreference = 'Stop';

$is64bit = Get-ProcessorBits 64
if ($is64bit) {
  $path = "$toolsDir\webrecorder-player-win-x86_64-1.8.0.exe"
  }
else{
  $path = "$toolsDir\webrecorder-player-win-x86-1.8.0.exe"
}

$packageArgs = @{
  packageName      = 'webrecorderplayer'
  url              = 'https://github.com/webrecorder/webrecorder-player/releases/download/v1.8.0/webrecorder-player-win-x86-1.8.0.exe'
  url64            = 'https://github.com/webrecorder/webrecorder-player/releases/download/v1.8.0/webrecorder-player-win-x86_64-1.8.0.exe'
  checksum         = '5de20aa1f535be786caaff02cc4443fde065d0dc6bdc003ec1900a223fae7cd9'
  checksum64       = '32f7270ae5c02f2b301e0691012523e778fd52c5553d3b484124e2a74fa2a5c1'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  toolsDir         = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName     = 'Webrecorder Player*'
  fileFullPath     = "$path"
}
Get-ChocolateyWebFile @packageArgs
