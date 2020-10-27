$ErrorActionPreference = 'Stop';

$package  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pmd_home = Join-path $package 'pmd-bin-6.29.0'
$pmd_bin  = Join-Path $pmd_home 'bin/pmd.bat'
$cpd_bin  = Join-Path $pmd_home 'bin/cpd.bat'

$packageArgs = @{
  packageName    = 'pmd'
  url            = 'https://github.com/pmd/pmd/releases/download/pmd_releases%2F6.29.0/pmd-bin-6.29.0.zip'
  checksum       = '78ef4cff4b2e8160b8c7fbbdbdecdf2b782e2f2fa8d2aa613c734299dc5d3122'
  checksumType   = 'sha256'
  softwareName   = 'PMD'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyEnvironmentVariable `
    -VariableName 'PMD_HOME' `
    -VariableValue $pmd_home `
    -VariableType 'Machine'

Install-BinFile -Name 'pmd' -Path $pmd_bin
Install-BinFile -Name 'cpd' -Path $cpd_bin

Update-SessionEnvironment
