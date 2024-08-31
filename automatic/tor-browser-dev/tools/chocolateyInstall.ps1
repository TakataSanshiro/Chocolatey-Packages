$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installArgs = '/S /D=' + $toolsDir

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://dist.torproject.org/torbrowser/14.0a3/tor-browser-windows-i686-portable-14.0a3.exe'
  url64          = 'https://dist.torproject.org/torbrowser/14.0a3/tor-browser-windows-x86_64-portable-14.0a3.exe'
  checksum       = '39b4f52678badf78623c0ca3ef88fb9f7bd15a8fcbf728d7310830ee8e4a747c'
  checksum64     = '15a043143e58cebae91ecd33cab0024e6f2bd03872d47c33ed708d951f843262'
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
