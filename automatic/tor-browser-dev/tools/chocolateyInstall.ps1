$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installArgs = '/S /D=' + $toolsDir

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://dist.torproject.org/torbrowser/14.0a7/tor-browser-windows-i686-portable-14.0a7.exe'
  url64          = 'https://dist.torproject.org/torbrowser/14.0a7/tor-browser-windows-x86_64-portable-14.0a7.exe'
  checksum       = 'dc62d99bdff8ea7f1caf8d6015a9cacf04a24b7d8542e82f868304c640117097'
  checksum64     = 'd110cfaf196566f1de24f63cfbd6e73bb7eba2491ee2f95bc7dbee81b5187963'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = $installArgs
}

Install-ChocolateyPackage @packageArgs

$files = Get-ChildItem $toolsDir -include *.exe -recurse
foreach ($file in $files) {
    New-Item "$file.ignore" -type file -force | Out-Null
}

# set NTFS modify file permissions to $toolsDir\Browser for user account that installed the package
$WhoAmI = whoami
$Acl = Get-Acl "$toolsDir\Browser"
$Ar = New-Object  system.security.accesscontrol.filesystemaccessrule($WhoAmI, "Modify", 'ContainerInherit,ObjectInherit', 'None', "Allow")
$Acl.SetAccessRule($Ar)
Set-Acl "$toolsDir\Browser" $Acl
