$ErrorActionPreference = 'Stop';

$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe   = 'AutoHotKey'
$ahkFile  = Join-Path $toolsDir "chocolateyUninstall.ahk"
Start-Process $ahkExe $ahkFile

$uninstallerFile = "${env:ProgramFiles}\i2p\Uninstaller\uninstaller.jar"
Start-Process $uninstallerFile
