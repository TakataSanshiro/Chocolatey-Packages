$ErrorActionPreference = 'Stop'

$UninstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType    = 'exe'
    File        = "$env:LocalAppData\element-desktop\Update.exe"
    SilentArgs  = '--uninstall -s'
}

Uninstall-ChocolateyPackage @UninstallArgs
