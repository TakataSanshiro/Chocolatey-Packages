$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installArgs = '/S /D=' + $toolsDir

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://dist.torproject.org/torbrowser/14.0a9/tor-browser-windows-i686-portable-14.0a9.exe'
  url64          = 'https://dist.torproject.org/torbrowser/14.0a9/tor-browser-windows-x86_64-portable-14.0a9.exe'
  checksum       = 'de82b40092cfc65330013f529df730adecf3cd2a888e2a5334243a3dad4ebd2b'
  checksum64     = '0a3742f0f2c572ec373edf1a9356808333367d2e30d9c2faf4dd5d38c4bc5d80'
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
