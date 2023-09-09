import-module au

$releases = 'https://github.com/loki-project/session-desktop/tags'

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

    $version = $download_page.links.href -match 'tag/v'| Select -First 1 | % { $_ -split '/' | select -Last 1 }
    $version = $version.Substring(1)

    @{
        Version = $version
        URL64   = "https://github.com/loki-project/session-desktop/releases/download/v$version/session-desktop-win-x64-$version.exe"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}
