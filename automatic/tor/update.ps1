import-module au

$releases = 'https://www.torproject.org/download/tor/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"          = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*url64\s*=\s*)('.*')"        = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $version = $download_page.links.href -match 'tor-win' -notmatch 'alpha' | Select -First 1 | % { $_ -split '/' | select -Last 1 }
    $version = $version | % { $_ -split '-' | select -Last 1 }
    $length  = $version.length
    $version = $version.Substring(0, $length-4)

    $torbrowserversion = $download_page.links.href -match 'tor-win' -notmatch 'alpha' | Select -First 1 | % { $_ -split '/' | select -Last 2 }
    $torbrowserversion = $torbrowserversion[0]

    @{
        Version = $version
        URL32   = "https://archive.torproject.org/tor-package-archive/torbrowser/$torbrowserversion/tor-win32-$version.zip"
        URL64   = "https://archive.torproject.org/tor-package-archive/torbrowser/$torbrowserversion/tor-win64-$version.zip"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}