#$content = Join-Path (Get-ToolsLocation) 'joytokey'
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
  checksum       = '6ca135890dcf6d94d8b3352fb9a1765ce41f4c98ce7cb7566db92f73bf4100d8'
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
