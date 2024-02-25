import-module au

$releases = 'https://www.nirsoft.net/utils/web_cache_image_info.html'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            # "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            # "(?i)(^\s*url64\s*=\s*)('.*')"        = "`$1'$($Latest.URL64)'"
            #"(?i)(^\s*checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    # -UseBasicParsing
    $version = $download_page.ParsedHtml.querySelector(".utilcaption").innerText
    $version = $version.split("`r`n") | select -first 1
    $version = $version | % { $_ -split ' ' | select -first 3 }
    $version = $version[2]
    $version = $version.Substring(1)
    $version = $version.Trim(":")

    @{
        Version = $version
        URL32   = "https://www.nirsoft.net/utils/webcacheimageinfo.zip"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}
