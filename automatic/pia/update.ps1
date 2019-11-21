import-module au

$releases = 'https://www.privateinternetaccess.com/pages/download'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*url64\s*=\s*)('.*')"        = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    # -UseBasicParsing
    $urlVersion = $download_page.ParsedHtml.querySelector(".checksum_os > p").innerText
    $urlVersion = $urlVersion.Substring(16)
    $urlVersion = $urlVersion.Substring(0,$urlVersion.length-4)
    $version = $urlVersion -split "-" | select -First 1
    $version = $version.Replace('.','')
    if ($version.Length -gt 2)
    {
      $version = $version + '.0'
    } 
    else
    {
      $version = $version + '0.0'
    }

    @{
        Version   = $version
        URL32     = "https://installers.privateinternetaccess.com/download/pia-windows-x86-$urlVersion.exe"
        URL64     = "https://installers.privateinternetaccess.com/download/pia-windows-x64-$urlVersion.exe"
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}