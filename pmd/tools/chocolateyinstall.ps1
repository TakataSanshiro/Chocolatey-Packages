$tools    = Split-Path $MyInvocation.MyCommand.Definition
$package  = Split-Path $tools
$pmd_home = Join-path $package 'pmd-bin-6.16.0'
$pmd_bin  = Join-Path $pmd_home 'bin/pmd.bat'
$cpd_bin  = Join-Path $pmd_home 'bin/cpd.bat'
 
Install-ChocolateyZipPackage `
    -PackageName 'pmd' `
    -Url 'https://github.com/pmd/pmd/releases/download/pmd_releases%2F6.17.0/pmd-bin-6.17.0.zip' `
    -Checksum 'B636989467AE1F9D72269D3FF54B20F42B59C43C096908134C5EB78C7E7DF467' `
    -ChecksumType 'SHA256'`
    -UnzipLocation $package `
 
Install-ChocolateyEnvironmentVariable `
    -VariableName 'PMD_HOME' `
    -VariableValue $pmd_home `
    -VariableType 'Machine'
 
Install-BinFile -Name 'pmd' -Path $pmd_bin
Install-BinFile -Name 'cpd' -Path $cpd_bin
 
Update-SessionEnvironment