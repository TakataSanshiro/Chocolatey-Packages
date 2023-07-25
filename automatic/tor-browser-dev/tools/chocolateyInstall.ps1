$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installArgs = '/S /D=' + $toolsDir

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://dist.torproject.org/torbrowser/12.5a7/torbrowser-install-12.5a7_ALL.exe'
  url64       = 'https://dist.torproject.org/torbrowser/12.5a7/torbrowser-install-win64-12.5a7_ALL.exe'
  checksum       = 'b5338cf9c0c2828e6d4814e4dbf64b2cd2ca3a165b05ac7c2f1bf0c60b5ff95b'
  checksum64     = '91f64f3668bbea77f95618d7f42f19bd9d64d2d21f1f31e391a66f303bf8465f'
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
