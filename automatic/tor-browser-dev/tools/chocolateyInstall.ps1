$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installArgs = '/S /D=' + $toolsDir

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://dist.torproject.org/torbrowser/14.5a4/tor-browser-windows-i686-portable-14.5a4.exe'
  url64          = 'https://dist.torproject.org/torbrowser/14.5a4/tor-browser-windows-x86_64-portable-14.5a4.exe'
  checksum       = '25582ef81df48a4fb12636fb075d647e17a56b274ec213f52c77ad9eb9065e0f'
  checksum64     = '446085a2c4f34cd1267cff3656246e76f517f22b6b4f9444bf6f860db15d2856'
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
