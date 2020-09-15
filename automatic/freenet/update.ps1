import-module au

$releases = 'https://freenetproject.org/pages/download.html'

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

    $urlVersion = $download_page.links.href -match 'exe' -notmatch 'sig' | Select -First 1 | % { $_ -split '/' | select -Last 1 }
    $urlVersion = $urlVersion.split("-") | select -Last 1
    $urlVersion = $urlVersion.split(".") | select -First 1
    $version    = '0.7.5.' + $urlVersion

    @{
        Version = $version
        URL64   = "https://github.com/freenet/fred/releases/download/build0$urlVersion/FreenetInstaller-$urlVersion.exe"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}