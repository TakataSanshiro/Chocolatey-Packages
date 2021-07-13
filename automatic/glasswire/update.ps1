import-module au

$releases = 'https://www.glasswire.com/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    # -UseBasicParsing
    $version = $download_page.ParsedHtml.querySelector(".version").innerText
    $version = $version | % { $_ -split ' ' | select -First 2 }
    $version = $version | select -Last 1
    $version = $version.Replace(',', '')
    
    @{
        Version   = $version
        URL32     = "https://download.glasswire.com/GlassWireSetup.exe"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}
