﻿#$content = Join-Path (Get-ToolsLocation) 'joytokey'
$content = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
#$target = Join-Path $content 'JoyToKey.exe'
$target = Join-Path $content 'JoyToKey.exe'

$shortcutdir = @{$true='CommonPrograms';$false='Programs'}[($PSVersionTable.PSVersion -gt '2.0.0.0')]
$shortcut = Join-Path ([System.Environment]::GetFolderPath($shortcutdir)) 'Joy to Key.lnk'

# Joy to Key writes to its installation directory, so it can't be in %PROGRAMDATA%
# Starting from 6.3 version, user configuration data will be by default stored in "JoyToKey" folder in user's "Documents" folder.
$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://joytokey.net/download/JoyToKey_en.zip'
  checksum       = '606aa3214be29078a59ffa3aa76be55ea533f7a45a5c49bd186b691b15909a2e'
  checksumType   = 'sha256'
  #unzipLocation  = "$content"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'joytokey'
}
Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyShortcut `
    -ShortcutFilePath $shortcut `
    -TargetPath $target

#New-Item -Type 'File' -Path "$target.ignore" -Force | Out-Null
