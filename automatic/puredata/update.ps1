import-module au

$releases = 'https://puredata.info/downloads/pure-data'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $version = $download_page.links.href -match 'windows-installer' | Select -First 1 | % { $_ -split '/' | select -Last 1 }
    $version = $version.Substring(3)
    $versionUrl = $version.Substring(0,$version.length-22)
    $version = $versionUrl -replace '-', '.'

    @{
        Version = $version
        URL32   = "http://msp.ucsd.edu/Software/pd-$versionUrl.windows-installer.exe"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}