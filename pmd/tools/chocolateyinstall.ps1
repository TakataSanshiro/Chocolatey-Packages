$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$pmd_home = Join-path $package 'pmd-bin-6.8.0'
$pmd_bin = Join-Path $pmd_home 'bin/pmd.bat'
$cpd_bin = Join-Path $pmd_home 'bin/cpd.bat'
 
Install-ChocolateyZipPackage `
    -PackageName 'pmd' `
    -Url 'https://github.com/pmd/pmd/releases/download/pmd_releases%2F6.8.0/pmd-bin-6.8.0.zip' `
    -Checksum '7945B49658791C5CBDDA975B42D8313340153E7873DB843484AA503DA878D3ED' `
    -ChecksumType 'SHA256'`
    -UnzipLocation $package `
 
Install-ChocolateyEnvironmentVariable `
    -VariableName 'PMD_HOME' `
    -VariableValue $pmd_home `
    -VariableType 'Machine'
 
Install-BinFile -Name 'pmd' -Path $pmd_bin
Install-BinFile -Name 'cpd' -Path $cpd_bin
 
Update-SessionEnvironment