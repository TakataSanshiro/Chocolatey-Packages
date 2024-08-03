$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installArgs = '/S /D=' + $toolsDir

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://dist.torproject.org/torbrowser/14.0a1/tor-browser-windows-i686-portable-14.0a1.exe'
  url64          = 'https://dist.torproject.org/torbrowser/14.0a1/tor-browser-windows-x86_64-portable-14.0a1.exe'
  checksum       = 'b8425546e2eef00e052f992dbde761cf7cfc24059dd0e50ebc7ad2bbba87d822'
  checksum64     = '3e85f039d43e15447ebfd038af08e002cd474b30c6375e0f5c6ec3213a14ae73'
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
