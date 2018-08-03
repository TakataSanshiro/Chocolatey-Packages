$ErrorActionPreference = 'Stop';

$packageName = 'pureref'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://www.pureref.com/files/installer.php?build=WIN32&downloadKey=DXfBkJMUiDG5M++KSUsyfA=='
$checksum = '3179FF9868BFE6B06A2D18E606ED4D13FDCBBC5702E26D55E0D96D6448D14231'
$checksumType = 'sha256'
$url64 = 'https://www.pureref.com/files/installer.php?build=WIN64&downloadKey=Kb/6+qzf7o8ihW0jS+LVGg=='
$checksum64 = '2C6E729C8F55B48A66E67E67478B43B35941EE1597A204BBFC32AB5C6D871BDF'
$checksumType64 = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0) 

$path = "$toolsDir\pureref.exe"

Get-ChocolateyWebFile        -PackageName "$packageName" `
                             -FileFullPath "$path" `
                             -Url "$url" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Url64bit "$url64" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$path"