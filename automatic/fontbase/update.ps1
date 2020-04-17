import-module au

$releases = 'https://fontba.se/updates'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    # -UseBasicParsing
    $version = $download_page.ParsedHtml.querySelector(".update.latest > div > h1").innerHTML

    @{
        Version = $version
        URL32   = "https://releases.fontba.se/win/FontBase-$version.exe"
    }
}

update -ChecksumFor all