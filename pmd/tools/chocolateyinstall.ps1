$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$pmd_home = Join-path $package 'pmd-bin-6.12.0'
$pmd_bin = Join-Path $pmd_home 'bin/pmd.bat'
$cpd_bin = Join-Path $pmd_home 'bin/cpd.bat'
 
Install-ChocolateyZipPackage `
    -PackageName 'pmd' `
    -Url 'https://github.com/pmd/pmd/releases/download/pmd_releases%2F6.12.0/pmd-bin-6.12.0.zip' `
    -Checksum 'E61B3855BD94C1A3875B788CFD252A2D4F1232D47A41479078640DA9AA3F7ECB' `
    -ChecksumType 'SHA256'`
    -UnzipLocation $package `
 
Install-ChocolateyEnvironmentVariable `
    -VariableName 'PMD_HOME' `
    -VariableValue $pmd_home `
    -VariableType 'Machine'
 
Install-BinFile -Name 'pmd' -Path $pmd_bin
Install-BinFile -Name 'cpd' -Path $cpd_bin
 
Update-SessionEnvironment