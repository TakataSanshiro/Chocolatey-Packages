import-module au

$releases = 'https://tinywall.pados.hu/changelog.txt'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            #  "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    # -UseBasicParsing
    $version = $download_page.ParsedHtml.querySelector("body").innerText
    $version = $version -split "---------------------" | select -First 2
    $version = $version[1] -split "-" | select -First 1
    $version = $version.Trim()

    @{
        Version = $version
        URL32   = 'https://tinywall.pados.hu/ccount/click.php?id=4'
    }
}

update -ChecksumFor all -NoCheckUrl