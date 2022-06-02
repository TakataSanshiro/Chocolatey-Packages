import-module au

$releases = 'https://sourceforge.net/projects/kpcli/files/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $version = $download_page.links.href -match 'kpcli-' -notmatch '.pl' | Select -First 1 | % { $_ -split '/' | select -Last 2 }
    $version = $version[0]
    $version = $version.split("-") | select -Last 1
    $version = $version.Substring(0,$version.length-4)

    @{
        Version = $version
        URL   = "https://sourceforge.net/projects/kpcli/files/kpcli-$version.exe/download"
        Checksum = Get-RemoteChecksum -Url 'https://sourceforge.net/projects/kpcli/files/kpcli-$version.exe/download'
    }
}

try {
    update
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}
