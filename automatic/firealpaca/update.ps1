import-module au

$releases = 'https://firealpaca.com/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            #  "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    # -UseBasicParsing

    $version = $download_page.ParsedHtml.querySelector(".main-brush__button > a").outerText
    $version = $version.split("`r`n") | select -First 1
    $version = $version -split " " | select -Last 1

    @{
        Version  = $version
        URL      = 'https://firealpaca.com/download/win64'
        Checksum = Get-RemoteChecksum -Url 'https://firealpaca.com/download/win64'
    }
}

update -NoCheckUrl
