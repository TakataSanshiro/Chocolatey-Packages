import-module au

$releases = 'https://www.xnview.com/en/xnconvert/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            # "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum32)'"
            # "(?i)(^\s*url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    # -UseBasicParsing
    $version = $download_page.ParsedHtml.querySelector(".h5").innerText
    $version = $version.split(" ") | select -last 1
    $version = $version.Replace(':', '')

    @{
        Version = $version
        URL32   = "https://download.xnview.com/XnConvert-win.zip"
        URL64   = "https://download.xnview.com/XnConvert-win-x64.zip"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}
