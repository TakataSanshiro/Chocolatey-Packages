$ErrorActionPreference = 'Stop';

$silentArgs = '/si '
$pp = Get-PackageParameters
if ($pp['dir']) {
    $dir = $pp['dir']
    if (!(Test-Path $dir -IsValid)) {
		Throw "Bad dir parameter"
	}
	$silentArgs = $silentArgs + '/dir=' + $dir + ' '
	}
if ($pp['re']) { $silentArgs = $silentArgs + '/re ' }
if ($pp['st']) { $silentArgs = $silentArgs + '/st ' }
if ($pp['en']) { $silentArgs = $silentArgs + '/en ' }
if ($pp['la']) { $silentArgs = $silentArgs + '/la ' }

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://kurtzimmermann.com/files/RegCool.exe'
  checksum       = 'FE0451C2078D6855A719DFC5F872E4E61B9753D6FC2D20808BE679399CEEA4A0'
  checksumType   = 'sha256'
  silentArgs     = $silentArgs
  validExitCodes = @(0, 18)
  softwareName   = 'regcool'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
