$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    file           = "$toolsDir\Falkon.Installer.3.1.0.exe"
    file64         = "$toolsDir\Falkon.Installer.3.1.0.x64.exe"
    installerType  = 'exe'
    silentArgs     = '/S'
    validExitCodes = @(0)
    softwareName   = 'Falkon'
}

Install-ChocolateyInstallPackage @packageArgs

Get-ChildItem $toolsDir\*.exe | ForEach-Object { Remove-Item $_ -ea 0; if (Test-Path $_) { Set-Content "$_.ignore" } }
