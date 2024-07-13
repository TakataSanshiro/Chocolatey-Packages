import-module au

$releases = 'https://download.kde.org/stable/kdiff3/'

function global:au_SearchReplace {
   @{
		".\legal\VERIFICATION.txt" = @{
		  "(?i)(x64:).*"        = "`${1} $($Latest.URL64)"
		  "(?i)(checksum type:).*" = "`${1} $($Latest.ChecksumType64)"
		  "(?i)(checksum64:).*"    = "`${1} $($Latest.Checksum64)"
		}
        #".\tools\chocolateyinstall.ps1" = @{
        #    "(?i)(^\s*File64\s*=\s*)(.*)" = "`$1Join-Path `$toolsDir '$($Latest.FileName64)'"
        #}
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $version = $download_page.links.href -match '-windows-64' -notmatch 'sideload|slientfixed|1.11.1|1.11.0' | Select -Last 1 | % { $_ -split '-' | select -First 2 }
    $version = $version[1]

    @{
        Version        = $version
        URL64          = "https://download.kde.org/stable/kdiff3/kdiff3-$version-windows-64-cl.exe"
    }
}

function global:au_BeforeUpdate() {
	Get-RemoteFiles -Purge
}


try {
    update -checksumfor none
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}
