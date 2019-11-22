import-module au

$releases = 'https://me-download.wickr.com/api/download/me/download/windows'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL)'"
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
    $version = $download_page.Content | % { $_ -split '"' | select -Last 6 }
    $version = $version.split("`r`n") | select -First 1
    $version = $version -split "/" | select -last 1
    $version = $version -split "-" | select -last 1
    $version = $version.Substring(0,$version.length-4)

    @{
        Version = $version
        URL     = "https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-$version.msi"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}