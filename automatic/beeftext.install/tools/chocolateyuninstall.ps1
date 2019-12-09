$ErrorActionPreference = 'Stop';

$packageName    = 'beeftext.install'
$softwareName   = 'Beeftext'
$fileType       = 'exe'
$silentArgs     = '/S'
$validExitCodes = @(0)

[array] $key = Get-UninstallRegistryKey -SoftwareName $softwareName
 
if ($key.Count -eq 1) {
    $key | % { 
        if ($_.UninstallString) {
            function Split-CommandLine {
                param([string] $file)
                return $file
            }
            # Remove quotes and trailing arguments if any
            $file = Invoke-Expression "Split-CommandLine $($_.UninstallString)"
        }
 
        if ($file -and (Test-Path $file)) {
            Uninstall-ChocolateyPackage -PackageName $packageName `
                                        -FileType $fileType `
                                        -SilentArgs $silentArgs `
                                        -ValidExitCodes $validExitCodes `
                                        -File $file
        } else {
            Write-Warning "$packageName has already been uninstalled by other means. Unknown uninstaller: $file ($($_.UninstallString))."
        }
    }
}
elseif ($key.Count -eq 0) {
  Write-Warning "$packageName has already been uninstalled by other means."
}
elseif ($key.Count -gt 1) {
  Write-Warning "$($key.Count) matches found!"
  Write-Warning "To prevent accidental data loss, no programs will be uninstalled."
  Write-Warning "Please alert the package maintainer that the following keys were matched:"
  $key | ForEach-Object { Write-Warning "- $($_.DisplayName)" }
}