$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installArgs = '/S /D=' + $toolsDir

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://dist.torproject.org/torbrowser/13.5a2/tor-browser-windows-i686-portable-13.5a2.exe'
  url64          = 'https://dist.torproject.org/torbrowser/13.5a2/tor-browser-windows-x86_64-portable-13.5a2.exe'
  checksum       = 'f070fa946a9e85057fd7d27dde7f490bdb51e8b9566efe732e60ee8738d76288'
  checksum64     = '2d545a632100073ddbd09c496287dbd8e9834deb5f16304de3fed8b416e55881'
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
