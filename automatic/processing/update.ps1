import-module au

$releases = 'https://github.com/processing/processing4/tags'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"          = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $version    = $download_page.links.href -match 'tag/' | Select -First 1 | % { $_ -split '/' | select -Last 1 }
    $version    = $version | % { $_ -split '-' | select -Last 1 }
    $urlVersion = $download_page.links.href -match 'tag/' | Select -First 1 | % { $_ -split '/' | select -Last 1 }
    $urlVersion = $urlVersion | % { $_ -split '-' | select -Last 2 }
    $urlVersion = $urlVersion[0] + "-" + $urlVersion[1] 

    @{
        Version = $version
        URL32   = "https://github.com/processing/processing4/releases/download/processing-$urlVersion/processing-$version-windows-x64.zip"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}
