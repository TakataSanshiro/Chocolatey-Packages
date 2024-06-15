$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installArgs = '/S /D=' + $toolsDir

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://dist.torproject.org/torbrowser/13.5a9/tor-browser-windows-i686-portable-13.5a9.exe'
  url64          = 'https://dist.torproject.org/torbrowser/13.5a9/tor-browser-windows-x86_64-portable-13.5a9.exe'
  checksum       = '518be88a802b51136c8eda4d4997eacdd2311a4b6a3cd71aba2a2ba6de0f0a1a'
  checksum64     = 'cfdced1ad0fec33f5ef5f07c7589670e14c6cbfb9586c6d86de59b98e9ed17d8'
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
