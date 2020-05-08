import-module au

$releases = 'https://kurtzimmermann.com/regcoolversions_de.html'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    #  -UseBasicParsing
    $version = $download_page.ParsedHtml.querySelector("#header3-2h > div > div > div > p").outerText
    $version = $version.split() | select -first 1
    $version = $version.Substring(1)

    @{
        Version = $version
        URL32   = "https://kurtzimmermann.com/files/RegCoolX32.zip"
        URL64   = "https://kurtzimmermann.com/files/RegCoolX64.zip"
    }
}

update -ChecksumFor all -NoCheckUrl