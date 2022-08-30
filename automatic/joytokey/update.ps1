import-module au

$releases = 'https://joytokey.net/en/news'

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
    $version = $download_page.ParsedHtml.querySelector("#main-contents> h5").outerText
    $version = $version -split " " | select -Last 1

    @{
        Version  = $version
        URL      = 'https://joytokey.net/download/JoyToKey_en.zip'
        Checksum = Get-RemoteChecksum -Url 'https://joytokey.net/download/JoyToKey_en.zip'
    }
}

update -NoCheckUrl
