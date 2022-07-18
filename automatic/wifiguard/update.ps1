import-module au

$releases = 'https://www.softperfect.com/products/wifiguard/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    # -UseBasicParsing
    $version = $download_page.ParsedHtml.querySelector(".infoboxcontent > p").outerHTML -replace '<[^>]+>',''
    $version = $version -split " " | select -first 1
    $version = $version -replace "`n|`r"

    @{
        Version = $version
        URL     = 'https://www.softperfect.com/download/files/wifiguard_windows_setup.exe'
        Checksum = Get-RemoteChecksum -Url 'https://www.softperfect.com/download/files/wifiguard_windows_setup.exe'
    }
}

update -ChecksumFor none -NoCheckUrl
