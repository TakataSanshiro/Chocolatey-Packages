$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName "webrecorderplayer" `
  -ZipFileName "webrecorderplayer*" 

Remove-item -path "$Home\Desktop\Webrecorder Player.lnk" -Force -ErrorAction 'SilentlyContinue'