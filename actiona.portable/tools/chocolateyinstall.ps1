$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'actiona.portable'
    FileType       = '7z'
    SoftwareName   = 'actiona portable *'
    File           = Get-Item $toolsDir\actiona-3.9.4-windows-32bit.7z
    File64         = Get-Item $toolsDir\actiona-3.9.4-windows-64bit.7z
    UnzipLocation  = $toolsDir
}
Install-ChocolateyZipPackage @packageArgs

Remove-Item $toolsDir\*.7z -ea 0
