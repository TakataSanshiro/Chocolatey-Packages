import-module au

$releases = 'http://www.sentex.net/~mwandel/jhead/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            #  "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_BeforeUpdate() {
    $Latest.Checksum32 = Get-RemoteChecksum $Latest.URL32
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $version = $download_page.links.href -match 'tar.gz' | Select -First 1 | % { $_ -split '/' | select -Last 1 }
    $version = $version -split "-" | select -last 1
    $version = $version.Substring(0,$version.length-7)

    @{
        Version = $version
        URL32   = "https://www.sentex.net/~mwandel/jhead/jhead.exe"
    }
}
update -ChecksumFor 32 -NoCheckUrl