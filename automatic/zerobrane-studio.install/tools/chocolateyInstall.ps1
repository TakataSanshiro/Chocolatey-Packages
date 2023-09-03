<#
Currently Zerobrane provides a portable .zip
and an "installer" .exe which is really a self-extracting zip
that also adds a shortcut to the Start Menu.
It doesn't have a default "install" location, nor does it get listed
in Add/Remove Programs.

In order to prevent confusion (and allow for changes in future)
I have provided two packages which closely mimic the two options
for acquiring Zerobrane on Windows.

However, in the name of safety I use the .zip for both
(I don't know if Install-ChocolateyZipPackage works with .exes)

So the .install package only differs in that it adds a shortcut :)
#>

$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = 'zerobrane-studio.install'
  url            = 'https://download.zerobrane.com/ZeroBraneStudioEduPack-2.00-win32.exe'
  checksum       = '86decd0054b81f15cc770c19d7db3077d8f67ea64ce36061038c7362e1d810a6'
  checksumType   = 'sha256'
  unzipLocation  = $toolsDir
  softwareName   = 'zerobrane-studio.install'
}
Install-ChocolateyZipPackage @packageArgs

# Place Start Menu Shortcut (mimicking Zerobrane's own self-extracting .exe)
$shortcutPath = join-path $env:appdata "Microsoft\Windows\Start Menu\Programs"
$shortcutName = "ZeroBrane Studio Lua IDE"
$lnkPath      = join-path $shortcutPath ($shortcutName + ".lnk")
$targetPath   = join-path $toolsDir "zbstudio.exe"

Install-ChocolateyShortcut -shortcutFilePath $lnkPath -targetPath $targetPath -description $shortcutName
