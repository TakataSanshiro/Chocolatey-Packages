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

    $version = $download_page.links.href -match 'ChangeLog' -notmatch 'alpha' | Select -First 1 | % { $_ -split '/' | select -Last 1 }
    $version = $version | % { $_ -split '-' | select -Last 1 }
    #$length  = $version.length
    #$version = $version.Substring(0, $length-4)

    $torbrowserversion = $download_page.links.href -match 'torbrowser' -notmatch 'alpha' | Select -First 1 | % { $_ -split '/' | select -First 6 }
    $torbrowserversion = $torbrowserversion[5]

    @{
        Version = $version
        URL32   = "https://archive.torproject.org/tor-package-archive/torbrowser/$torbrowserversion/tor-expert-bundle-$torbrowserversion-windows-i686.tar.gz"
        URL64   = "https://archive.torproject.org/tor-package-archive/torbrowser/$torbrowserversion/tor-expert-bundle-$torbrowserversion-windows-x86_64.tar.gz"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}
