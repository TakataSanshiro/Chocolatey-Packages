$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'actiona.install'
    FileType       = 'exe'
    SoftwareName   = 'actiona*'
    File           = Get-Item $toolsDir\actiona-3.9.4-windows-32bit.exe
    File64         = Get-Item $toolsDir\actiona-3.9.4-windows-64bit.exe
    UnzipLocation  = $toolsDir
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0) 
}
Install-ChocolateyPackage @packageArgs

Remove-Item $toolsDir\*.exe -ea 0
