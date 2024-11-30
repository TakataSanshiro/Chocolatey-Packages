$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installArgs = '/S /D=' + $toolsDir

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://dist.torproject.org/torbrowser/14.5a1/tor-browser-windows-i686-portable-14.5a1.exe'
  url64          = 'https://dist.torproject.org/torbrowser/14.5a1/tor-browser-windows-x86_64-portable-14.5a1.exe'
  checksum       = 'b610d0cd2ea1ac951ade818a615baa2376fc758f46e1869d2a205c53dc0387f9'
  checksum64     = '1198ce23b3dc9c19b9a141b7e108fc8f4081a0d0b5474f5aa3bd121e6658b161'
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
