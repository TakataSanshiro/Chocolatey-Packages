$ErrorActionPreference = 'Stop';

$is64bit = Get-ProcessorBits 64
if ($is64bit) {
  $path = "$toolsDir\webrecorder-player-win-x86_64-1.7.0.exe"
  }
else{
  $path = "$toolsDir\webrecorder-player-win-x86-1.7.0.exe"
}

$packageArgs = @{
  packageName      = 'webrecorderplayer'
  url              = 'https://github.com/webrecorder/webrecorder-player/releases/download/v1.7.0/webrecorder-player-win-x86-1.7.0.exe'
  url64            = 'https://github.com/webrecorder/webrecorder-player/releases/download/v1.7.0/webrecorder-player-win-x86_64-1.7.0.exe'
  checksum         = '9fe858b7ae938bbaffce8e4de5898274f8f8543627875634d1d0ff61af2bbc7a'
  checksum64       = '135b6a45ee936679cd5e18e6ee7e7570e22781b6338cafcd933f252a15d066b0'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  toolsDir         = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName     = 'Webrecorder Player*'
  fileFullPath     = "$path"
}
Get-ChocolateyWebFile @packageArgs
