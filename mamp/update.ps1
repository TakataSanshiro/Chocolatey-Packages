import-module au

$releases = 'https://www.mamp.info/en/downloads/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $version = $download_page.links.href -match 'MAMP-PRO-WINDOWS/releases/' | Select -First 1 | % { $_ -split '/' | select -Last 2 }
    $version = $version[0]

    @{
        Version = $version
        URL64   = "https://downloads.mamp.info/MAMP-PRO-WINDOWS/releases/$version/MAMP_MAMP_PRO_$version.exe"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}