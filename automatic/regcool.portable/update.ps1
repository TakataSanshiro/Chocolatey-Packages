import-module au

$releases = 'https://kurtzimmermann.com/index_e.html'

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
    $version = $download_page.ParsedHtml.querySelector(".mbr-cards-col:nth-child(3) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > p:nth-child(2)").outerText
    $version = $version.split("`r`n") | select -last 9 | select -first 1
    $version = $version.split() | select -first 1
    $version = $version.Substring(1)

    @{
        Version = $version
        URL32   = "https://kurtzimmermann.com/files/RegCoolX32.zip"
        URL64   = "https://kurtzimmermann.com/files/RegCoolX64.zip"
    }
}

update -ChecksumFor all -NoCheckUrl