import-module au

$releases = 'https://github.com/pmd/pmd/tags'

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

    $version = $download_page.links.href -match 'tag/' | Select -First 1 | % { $_ -split '/' | select -Last 1 }
    $version = $version | % { $_ -split '%' | select -Last 1 }
    $version = $version.Substring(2)

    @{
        Version = $version
        URL32   = "https://github.com/pmd/pmd/releases/download/pmd_releases%2F$version/pmd-bin-$version.zip"
    }
}

update