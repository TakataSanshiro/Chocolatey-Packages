$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installArgs = '/S /D=' + $toolsDir

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://dist.torproject.org/torbrowser/13.5a1/tor-browser-windows-i686-portable-13.5a1.exe'
  url64          = 'https://dist.torproject.org/torbrowser/13.5a1/tor-browser-windows-x86_64-portable-13.5a1.exe'
  checksum       = 'd7cb4ad6e67e0cb76e82b1f63b5c3c12fd61b698e84659b6bb4bf3e1d3ff32ac'
  checksum64     = '69c854e09db5943c0e1af655bbcd5d37d53d831644f4e30cc994c580065d8607'
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
