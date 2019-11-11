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

function global:au_BeforeUpdate() {
    $Latest.Checksum = Get-RemoteChecksum $Latest.URL
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    # -UseBasicParsing
    $version = $download_page.ParsedHtml.querySelector(".main_bottom_box_latest").outerText
    $version = $version -split " " | select -Last 3
    $version = $version[0]

    @{
        Version = $version
        URL     = 'https://firealpaca.com/download/win64'
    }
}

update -ChecksumFor none -NoCheckUrl